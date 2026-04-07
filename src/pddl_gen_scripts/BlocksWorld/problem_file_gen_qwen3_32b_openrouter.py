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
PROMPT_PATH = PROJECT_ROOT / 'prompts' / 'only_pddl_instruction.txt'
DOMAIN_PDDL_PATH = DATA_DIR / 'pddl' / 'domain.pddl'
DESC_DIR = DATA_DIR / 'descriptions'
OUTPUT_ROOT = PROJECT_ROOT / 'output' / 'direct_pddl' / 'qwen3_32b_openrouter_retry3'

# Model setup (Qwen3 via OpenRouter)
MODEL_NAME = 'qwen/qwen3-32b'
OPENROUTER_URL = 'https://openrouter.ai/api/v1/chat/completions'


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


def load_problem_descriptions(problem_id: str) -> tuple[str, str]:
    domain_path = DESC_DIR / f"{problem_id}_domain.txt"
    problem_path = DESC_DIR / f"{problem_id}_problem.txt"

    if not domain_path.exists():
        raise FileNotFoundError(f"Missing domain description: {domain_path}")
    if not problem_path.exists():
        raise FileNotFoundError(f"Missing problem description: {problem_path}")

    return domain_path.read_text(), problem_path.read_text()


def build_prompt(problem_id: str, prompt_prefix: str, domain_pddl_text: str) -> str:
    nl_domain, nl_problem = load_problem_descriptions(problem_id)

    return (
        f"{prompt_prefix}\n\n"
        "You are an expert PDDL engineer.\n"
        "Create a syntactically correct and semantically consistent problem file "
        "using the information below.\n\n"
        "You are given three inputs:\n"
        "1) Original natural language domain description\n"
        "2) Original natural language problem description\n"
        "3) Ground-truth domain PDDL (fixed reference)\n\n"
        "### Original domain description\n"
        f"{nl_domain}\n\n"
        "### Original problem description\n"
        f"{nl_problem}\n\n"
        "### Ground-truth domain PDDL\n"
        f"{domain_pddl_text}\n\n"
        "Output contract:\n"
        "- Generate ONLY the final problem PDDL.\n"
        "- Wrap it in exactly one <problem_file>...</problem_file> block.\n"
        "- Do not output any <domain_file> block.\n"
        "- Do not include any extra text before or after <problem_file>...</problem_file>."
    )


def call_qwen(prompt: str, model_name: str, openrouter_url: str, api_key: str, temperature: float = 0.4, max_tokens: int = 38912) -> str:
    import requests

    headers = {
        'Authorization': f'Bearer {api_key}',
        'Content-Type': 'application/json',
    }

    payload = {
        'model': model_name,
        'messages': [{'role': 'user', 'content': prompt}],
        'temperature': temperature,
        'max_tokens': max_tokens,
    }

    resp = requests.post(openrouter_url, headers=headers, json=payload, timeout=300)
    if not resp.ok:
        raise RuntimeError(
            f'OpenRouter request failed: {resp.status_code} {resp.reason}\n{resp.text}'
        )

    data = resp.json()
    return data['choices'][0]['message']['content'] or ''


def extract_problem_pddl(raw_text: str) -> str:
    if not raw_text:
        return ''

    matches = re.findall(r"<problem_file>(.*?)</problem_file>", raw_text, flags=re.DOTALL | re.IGNORECASE)
    if matches:
        return matches[-1].strip()

    return ''


def main() -> None:
    parser = argparse.ArgumentParser(description='Generation-only script from problem_file_gen_qwen3_32b_openrouter.ipynb')
    parser.add_argument('--start', type=int, help='Start problem number (inclusive), e.g. 101')
    parser.add_argument('--end', type=int, help='End problem number (inclusive), e.g. 200')
    parser.add_argument('--ids', type=str, help="Comma/space separated IDs, e.g. 'p101,p102,p110' or '101 102 110'")
    parser.add_argument('--temperature', type=float, default=0.4)
    parser.add_argument('--max-tokens', type=int, default=38912)
    parser.add_argument('--dry-run', action='store_true', help='Validate IDs/inputs only; no API calls or file writes')
    args = parser.parse_args()

    problem_ids = parse_problem_ids(args.start, args.end, args.ids)

    prompt_prefix = PROMPT_PATH.read_text()
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
                _ = build_prompt(pid, prompt_prefix, domain_pddl_text)
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

    api_key = os.getenv('OPENROUTER_API_KEY')
    if not api_key:
        raise RuntimeError('OPENROUTER_API_KEY is not set in environment.')

    failures = []
    for pid in tqdm(problem_ids, desc='LLM generation', unit='problem'):
        try:
            prompt = build_prompt(pid, prompt_prefix, domain_pddl_text)
            raw_text = call_qwen(
                prompt=prompt,
                model_name=MODEL_NAME,
                openrouter_url=OPENROUTER_URL,
                api_key=api_key,
                temperature=args.temperature,
                max_tokens=args.max_tokens,
            )
            problem_pddl_text = extract_problem_pddl(raw_text)

            cand_dir = OUTPUT_ROOT / pid / 'cand_00'
            cand_dir.mkdir(parents=True, exist_ok=True)

            (cand_dir / 'raw.txt').write_text(raw_text or '')
            (cand_dir / 'problem.pddl').write_text(problem_pddl_text or '')
            (cand_dir / 'domain.pddl').write_text(domain_pddl_text)

            if not problem_pddl_text.strip():
                failures.append((pid, 'no <problem_file> block extracted'))
        except Exception as e:
            failures.append((pid, str(e)))

    print('\nGeneration done!')
    if failures:
        print('Failed IDs:', ', '.join(pid for pid, _ in failures))
    else:
        print('All succeeded.')


if __name__ == '__main__':
    main()
