from __future__ import annotations

import argparse
import os
import re
from pathlib import Path

try:
    from tqdm.auto import tqdm
except Exception:  # pragma: no cover
    def tqdm(iterable, **kwargs):
        return iterable


# Paths match notebook assumptions. Resolve from this file so invocation CWD does not matter.
PROJECT_ROOT = Path(__file__).resolve().parents[2]
DATA_DIR = PROJECT_ROOT / 'data'
PROMPT_PATH = PROJECT_ROOT / 'prompts' / 'llm_planner_instruction.txt'
DOMAIN_PDDL_PATH = DATA_DIR / 'pddl' / 'domain.pddl'
OUTPUT_ROOT = PROJECT_ROOT / 'output' / 'llm_planner_direct_unraveling' / 'gemini_3_flash'

MODEL_NAME = 'gemini-3-flash-preview'


def pid_from_int(i: int) -> str:
    return f"p{i:02d}" if i < 100 else f"p{i}"


def parse_problem_ids(start: int | None, end: int | None, ids: str | None) -> list[str]:
    if ids:
        out = []
        for token in re.split(r"[\s,]+", ids.strip()):
            if not token:
                continue
            out.append(token if token.startswith('p') else pid_from_int(int(token)))
        return out

    if start is None or end is None:
        raise ValueError('Provide either --ids or both --start and --end.')
    if start > end:
        raise ValueError('--start must be <= --end')

    return [pid_from_int(i) for i in range(start, end + 1)]


def load_descriptions(problem_id: str) -> tuple[str, str]:
    domain_desc_path = DATA_DIR / 'descriptions_unraveling' / f'{problem_id}_domain.txt'
    problem_desc_path = DATA_DIR / 'descriptions_unraveling' / f'{problem_id}_problem.txt'

    if not domain_desc_path.exists():
        raise FileNotFoundError(f'Missing domain description: {domain_desc_path}')
    if not problem_desc_path.exists():
        raise FileNotFoundError(f'Missing problem description: {problem_desc_path}')

    return domain_desc_path.read_text(), problem_desc_path.read_text()


def build_prompt(problem_id: str, planner_instruction: str, domain_pddl_text: str) -> str:
    domain_desc, problem_desc = load_descriptions(problem_id)

    return (
        planner_instruction
        + "\n\nYou are an expert automated planner.\n"
        "Create an executable plan that is consistent with all provided information.\n\n"
        "### Natural-language domain description\n"
        f"{domain_desc}\n\n"
        "### Natural-language problem description\n"
        f"{problem_desc}\n\n"
        "### Ground-truth domain PDDL\n"
        f"{domain_pddl_text}\n\n"
        "Output only the final plan wrapped in <plan>...</plan>."
    )


def call_gemini(client, prompt: str, temperature: float = 0.4, max_output_tokens: int = 200000, thinking_level: str = 'medium') -> str:
    from google.genai import types

    resp = client.models.generate_content(
        model=MODEL_NAME,
        contents=prompt,
        config=types.GenerateContentConfig(
            temperature=temperature,
            max_output_tokens=max_output_tokens,
            thinking_config={
                'thinking_level': thinking_level,
            },
        ),
    )
    return resp.text or ''


def extract_plan(raw_text: str) -> str:
    if not raw_text:
        return ''

    m = re.search(r"<plan>(.*?)</plan>", raw_text, flags=re.DOTALL | re.IGNORECASE)
    if not m:
        return ''

    plan_text = m.group(1).strip()
    lines = [ln.strip() for ln in plan_text.splitlines() if ln.strip()]
    return '\n'.join(lines)


def main() -> None:
    parser = argparse.ArgumentParser(description='Generation-only script from llm_planner_gen_gemini_direct_unraveling.ipynb')
    parser.add_argument('--start', type=int, help='Start problem number (inclusive), e.g. 1')
    parser.add_argument('--end', type=int, help='End problem number (inclusive), e.g. 200')
    parser.add_argument('--ids', type=str, help="Comma/space separated IDs, e.g. 'p01,p02,p10' or '1 2 10'")
    parser.add_argument('--temperature', type=float, default=0.4)
    parser.add_argument('--max-output-tokens', type=int, default=200000)
    parser.add_argument('--thinking-level', type=str, default='medium', choices=['minimal', 'low', 'medium', 'high'])
    parser.add_argument('--dry-run', action='store_true', help='Validate IDs/inputs only; no API calls or file writes')
    args = parser.parse_args()

    problem_ids = parse_problem_ids(args.start, args.end, args.ids)

    planner_instruction = PROMPT_PATH.read_text()
    domain_pddl_text = DOMAIN_PDDL_PATH.read_text()
    OUTPUT_ROOT.mkdir(parents=True, exist_ok=True)

    print('PROJECT_ROOT:', PROJECT_ROOT)
    print('OUTPUT_ROOT:', OUTPUT_ROOT)
    print('Model:', MODEL_NAME)
    print('Num problems:', len(problem_ids))
    print('First/last:', problem_ids[0], problem_ids[-1])
    print('Dry run:', args.dry_run)

    if args.dry_run:
        failures = []
        for pid in tqdm(problem_ids, desc='Dry-run validation', unit='problem'):
            try:
                _ = build_prompt(pid, planner_instruction, domain_pddl_text)
            except Exception as e:
                failures.append((pid, str(e)))

        print('\nGeneration done! (dry-run, no files written)')
        if failures:
            print('Failed IDs:', ', '.join(pid for pid, _ in failures))
            for pid, err in failures:
                print(f'- {pid}: {err}')
        else:
            print('All succeeded.')
        return

    from google import genai
    from dotenv import load_dotenv

    env_path = PROJECT_ROOT / '.env'
    load_dotenv(env_path)
    api_key = os.getenv('GOOGLE_API_KEY')
    if not api_key:
        raise ValueError(f'GOOGLE_API_KEY not found in {env_path}')

    client = genai.Client(api_key=api_key)

    failures = []
    for pid in tqdm(problem_ids, desc='Planner generation', unit='problem'):
        try:
            prompt = build_prompt(pid, planner_instruction, domain_pddl_text)
            raw_text = call_gemini(
                client,
                prompt,
                temperature=args.temperature,
                max_output_tokens=args.max_output_tokens,
                thinking_level=args.thinking_level,
            )
            plan_text = extract_plan(raw_text)

            cand_dir = OUTPUT_ROOT / pid / 'cand_00'
            cand_dir.mkdir(parents=True, exist_ok=True)

            (cand_dir / 'raw.txt').write_text(raw_text or '')
            (cand_dir / 'plan.txt').write_text((plan_text + '\n') if plan_text else '')
            (cand_dir / 'domain.pddl').write_text(domain_pddl_text)

            if not plan_text.strip():
                failures.append((pid, 'no <plan> block extracted'))
        except Exception as e:
            failures.append((pid, str(e)))

    print('\nGeneration done!')
    if failures:
        print('Failed IDs:', ', '.join(pid for pid, _ in failures))
    else:
        print('All succeeded.')


if __name__ == '__main__':
    main()
