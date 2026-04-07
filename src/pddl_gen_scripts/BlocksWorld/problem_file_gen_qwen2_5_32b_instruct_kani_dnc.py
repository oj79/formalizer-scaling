from __future__ import annotations

import argparse
import asyncio
import json
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

# Put heavy caches on NVMe (recommended in SageMaker); fallback for non-SageMaker envs.
preferred_cache_root = Path('/mnt/sagemaker-nvme/formalizer_cache')
if preferred_cache_root.parent.exists():
    NVME_CACHE_ROOT = preferred_cache_root
else:
    NVME_CACHE_ROOT = (PROJECT_ROOT / '.cache' / 'formalizer_cache')

HF_HOME_DIR = NVME_CACHE_ROOT / 'hf_home'
HF_HUB_CACHE_DIR = NVME_CACHE_ROOT / 'hf_hub'
TRANSFORMERS_CACHE_DIR = NVME_CACHE_ROOT / 'transformers'
TORCH_HOME_DIR = NVME_CACHE_ROOT / 'torch'
XDG_CACHE_DIR = NVME_CACHE_ROOT / 'xdg_cache'

for d in [
    NVME_CACHE_ROOT,
    HF_HOME_DIR,
    HF_HUB_CACHE_DIR,
    TRANSFORMERS_CACHE_DIR,
    TORCH_HOME_DIR,
    XDG_CACHE_DIR,
]:
    d.mkdir(parents=True, exist_ok=True)

os.environ['HF_HOME'] = str(HF_HOME_DIR)
os.environ['HUGGINGFACE_HUB_CACHE'] = str(HF_HUB_CACHE_DIR)
os.environ['TRANSFORMERS_CACHE'] = str(TRANSFORMERS_CACHE_DIR)
os.environ['TORCH_HOME'] = str(TORCH_HOME_DIR)
os.environ['XDG_CACHE_HOME'] = str(XDG_CACHE_DIR)
os.environ['PYTORCH_CUDA_ALLOC_CONF'] = 'expandable_segments:True'

DATA_DIR = PROJECT_ROOT / 'data'
DESC_DIR = DATA_DIR / 'descriptions'
DOMAIN_PDDL_PATH = DATA_DIR / 'pddl' / 'domain.pddl'

PROMPT_HEADER_PATH = PROJECT_ROOT / 'prompts' / 'only_pddl_instruction_dnc_header.txt'
PROMPT_LINE_PATH = PROJECT_ROOT / 'prompts' / 'only_pddl_instruction_dnc_line.txt'

OUTPUT_ROOT = PROJECT_ROOT / 'output' / 'direct_pddl_dnc' / 'qwen2_5_32b_instruct_kani'

HF_MODEL_ID = 'Qwen/Qwen2.5-32B-Instruct'

HEADER_RE = re.compile(r"<header>\s*(.*?)\s*</header>", re.IGNORECASE | re.DOTALL)
FACT_RE = re.compile(r"<fact>\s*(.*?)\s*</fact>", re.IGNORECASE | re.DOTALL)


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


def load_problem_descriptions(problem_id: str) -> dict:
    domain_path = DESC_DIR / f"{problem_id}_domain.txt"
    problem_path = DESC_DIR / f"{problem_id}_problem.txt"
    problem_line_path = DESC_DIR / f"{problem_id}_problem_line.txt"

    if not domain_path.exists():
        raise FileNotFoundError(f"Missing domain NL file: {domain_path}")
    if not problem_path.exists():
        raise FileNotFoundError(f"Missing problem NL file: {problem_path}")
    if not problem_line_path.exists():
        raise FileNotFoundError(f"Missing line-parsed problem NL file: {problem_line_path}")

    return {
        'domain_nl': domain_path.read_text(),
        'problem_nl': problem_path.read_text(),
        'problem_nl_line': problem_line_path.read_text(),
    }


def build_header_prompt(problem_id: str, prompt_header_prefix: str, domain_pddl_text: str) -> str:
    parts = load_problem_descriptions(problem_id)
    nl_domain = parts['domain_nl']
    nl_problem = parts['problem_nl']

    return (
        f"{prompt_header_prefix}\n\n"
        "You are an expert PDDL engineer.\n"
        "Generate ONLY the problem header and object parts "
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
        "- Generate ONLY the problem header and object parts of the problem PDDL for this problem.\n"
        "- Wrap it in exactly one <header>...</header> block.\n"
        "- Do not generate init or goal facts.\n"
        "- Follow the exact formatting constraints in the instruction.\n"
        "- Do not include any extra text before or after <header>...</header>."
    )


def build_line_prompt(problem_id: str, section: str, line_text: str, prompt_line_prefix: str, domain_pddl_text: str) -> str:
    parts = load_problem_descriptions(problem_id)
    nl_domain = parts['domain_nl']

    return (
        f"{prompt_line_prefix}\n\n"
        "You are an expert PDDL engineer.\n"
        "Read ONLY ONE LINE of the natural language problem description at a time "
        "and generate ONLY its corresponding PDDL fact line.\n\n"
        "You are given four inputs:\n"
        "1) Original natural language domain description\n"
        "2) Ground-truth domain PDDL (fixed reference)\n"
        "3) Current section label\n"
        "4) Current single natural language line to convert\n\n"
        "### Original domain description\n"
        f"{nl_domain}\n\n"
        "### Ground-truth domain PDDL\n"
        f"{domain_pddl_text}\n\n"
        "### Section\n"
        f"{section}\n\n"
        "### Current line\n"
        f"{line_text}\n\n"
        "Output contract:\n"
        "- Generate ONLY one corresponding PDDL fact line.\n"
        "- Wrap it in exactly one <fact>...</fact> block.\n"
        "- Do not include any extra explanation or text before or after <fact>...</fact>."
    )


async def _call_qwen_async(ai, prompt: str, temperature: float = 0.4, max_new_tokens: int = 32768) -> str:
    return await ai.chat_round_str(
        prompt,
        temperature=temperature,
        max_new_tokens=max_new_tokens,
    )


def call_qwen(ai, prompt: str, temperature: float = 0.4, max_output_tokens: int = 32768) -> str:
    try:
        loop = asyncio.get_running_loop()
    except RuntimeError:
        return asyncio.run(_call_qwen_async(ai, prompt, temperature=temperature, max_new_tokens=max_output_tokens))

    import nest_asyncio
    nest_asyncio.apply()
    return loop.run_until_complete(_call_qwen_async(ai, prompt, temperature=temperature, max_new_tokens=max_output_tokens))


def extract_header_block(raw_text: str) -> str:
    m = HEADER_RE.search(raw_text or '')
    return m.group(1).strip() if m else ''


def extract_fact_block(raw_text: str) -> str:
    m = FACT_RE.search(raw_text or '')
    return m.group(1).strip() if m else ''


def _split_line_problem_sections(problem_line_text: str) -> tuple[list[str], list[str]]:
    lines = [line.strip() for line in (problem_line_text or '').splitlines() if line.strip()]

    init_header = 'As initial conditions I have that'
    goal_header = 'My goal is to have that'

    init_lines = []
    goal_lines = []
    section = None

    for line in lines:
        if line == init_header:
            section = 'init'
            continue
        if line == goal_header:
            section = 'goal'
            continue

        if section == 'init':
            init_lines.append(line)
        elif section == 'goal':
            goal_lines.append(line)

    if not init_lines or not goal_lines:
        raise ValueError('Failed to split line-parsed problem into init/goal sections.')
    return init_lines, goal_lines


def _clean_fact_text(fact_text: str) -> str:
    fact = (fact_text or '').strip()
    if '\n' in fact:
        fact = fact.splitlines()[0].strip()
    if fact.endswith('.'):
        fact = fact[:-1].strip()
    if not fact:
        return ''
    if not (fact.startswith('(') and fact.endswith(')')):
        return ''
    return fact


def _compose_problem_pddl_from_dnc(header_text: str, init_facts: list[str], goal_facts: list[str]) -> str:
    header = (header_text or '').strip()

    for leak in ['(:init', '(:goal']:
        idx = header.find(leak)
        if idx != -1:
            header = header[:idx].rstrip()

    if not header.startswith('(define'):
        raise ValueError("Header block does not start with '(define'.")

    if header.endswith(')'):
        header = header.rsplit(')', 1)[0].rstrip()

    lines = [header]
    lines.append('  (:init')
    for f in init_facts:
        lines.append(f'    {f}')
    lines.append('  )')
    lines.append('  (:goal')
    lines.append('    (and')
    for f in goal_facts:
        lines.append(f'      {f}')
    lines.append('    )')
    lines.append('  )')
    lines.append(')')
    return '\n'.join(lines) + '\n'


def process_one_problem_generation(ai, problem_id: str, prompt_header_prefix: str, prompt_line_prefix: str, domain_pddl_text: str,
                                   temperature: float = 0.4, max_output_tokens: int = 32768) -> dict:
    parts = load_problem_descriptions(problem_id)

    problem_dir = OUTPUT_ROOT / problem_id
    cand_dir = problem_dir / 'cand_00'
    dnc_dir = cand_dir / 'dnc'
    init_dir = dnc_dir / 'init_lines'
    goal_dir = dnc_dir / 'goal_lines'
    failed_dir = dnc_dir / 'failed_lines'
    for d in [cand_dir, dnc_dir, init_dir, goal_dir, failed_dir]:
        d.mkdir(parents=True, exist_ok=True)

    failed_index_path = dnc_dir / 'failed_lines_index.json'

    for p in failed_dir.glob('*'):
        if p.is_file():
            p.unlink()
    if failed_index_path.exists():
        failed_index_path.unlink()

    header_prompt = build_header_prompt(problem_id, prompt_header_prefix, domain_pddl_text)
    raw_header = call_qwen(ai, header_prompt, temperature=temperature, max_output_tokens=max_output_tokens)
    header_text = extract_header_block(raw_header)

    (dnc_dir / 'header_prompt.txt').write_text(header_prompt or '')
    (dnc_dir / 'header_raw.txt').write_text(raw_header or '')
    (dnc_dir / 'header_extracted.txt').write_text(header_text or '')

    if not header_text.strip():
        (cand_dir / 'raw.txt').write_text(raw_header or '')
        (cand_dir / 'problem.pddl').write_text('')
        (cand_dir / 'domain.pddl').write_text(domain_pddl_text)
        return {
            'problem': problem_id,
            'ok': False,
            'failed_line_count': 0,
            'error': 'No <header>...</header> found in header model output.',
        }

    init_lines, goal_lines = _split_line_problem_sections(parts['problem_nl_line'])
    init_facts = []
    goal_facts = []
    failed_lines = []

    for i, line in enumerate(init_lines, start=1):
        prompt = build_line_prompt(problem_id, 'init', line, prompt_line_prefix, domain_pddl_text)
        raw = call_qwen(ai, prompt, temperature=temperature, max_output_tokens=max_output_tokens)
        fact = _clean_fact_text(extract_fact_block(raw))
        init_facts.append(fact)

        line_file = init_dir / f'line_{i:03d}.txt'
        line_file.write_text(
            f"[section]\ninit\n\n"
            f"[line_index]\n{i}\n\n"
            f"[nl_line]\n{line}\n\n"
            f"[prompt]\n{prompt}\n\n"
            f"[raw]\n{raw}\n\n"
            f"[fact]\n{fact}\n"
        )

        if not fact:
            failed_lines.append({'section': 'init', 'line_index': i, 'nl_line': line})
            (failed_dir / f'init_line_{i:03d}.txt').write_text(
                f"[section]\ninit\n\n"
                f"[line_index]\n{i}\n\n"
                f"[nl_line]\n{line}\n\n"
                f"[raw]\n{raw}\n"
            )

    for i, line in enumerate(goal_lines, start=1):
        prompt = build_line_prompt(problem_id, 'goal', line, prompt_line_prefix, domain_pddl_text)
        raw = call_qwen(ai, prompt, temperature=temperature, max_output_tokens=max_output_tokens)
        fact = _clean_fact_text(extract_fact_block(raw))
        goal_facts.append(fact)

        line_file = goal_dir / f'line_{i:03d}.txt'
        line_file.write_text(
            f"[section]\ngoal\n\n"
            f"[line_index]\n{i}\n\n"
            f"[nl_line]\n{line}\n\n"
            f"[prompt]\n{prompt}\n\n"
            f"[raw]\n{raw}\n\n"
            f"[fact]\n{fact}\n"
        )

        if not fact:
            failed_lines.append({'section': 'goal', 'line_index': i, 'nl_line': line})
            (failed_dir / f'goal_line_{i:03d}.txt').write_text(
                f"[section]\ngoal\n\n"
                f"[line_index]\n{i}\n\n"
                f"[nl_line]\n{line}\n\n"
                f"[raw]\n{raw}\n"
            )

    if failed_lines:
        failed_index_path.write_text(json.dumps(failed_lines, indent=2))
    else:
        for p in failed_dir.glob('*'):
            if p.is_file():
                p.unlink()
        if failed_index_path.exists():
            failed_index_path.unlink()

    init_facts_valid = [f for f in init_facts if f]
    goal_facts_valid = [f for f in goal_facts if f]

    (dnc_dir / 'init_facts_combined.txt').write_text(("\n".join(init_facts_valid) + "\n") if init_facts_valid else '')
    (dnc_dir / 'goal_facts_combined.txt').write_text(("\n".join(goal_facts_valid) + "\n") if goal_facts_valid else '')

    final_problem_pddl = _compose_problem_pddl_from_dnc(header_text, init_facts_valid, goal_facts_valid)
    (cand_dir / 'raw.txt').write_text(raw_header or '')
    (cand_dir / 'problem.pddl').write_text(final_problem_pddl)
    (cand_dir / 'domain.pddl').write_text(domain_pddl_text)

    return {
        'problem': problem_id,
        'ok': len(failed_lines) == 0,
        'failed_line_count': len(failed_lines),
        'error': '' if len(failed_lines) == 0 else f"{len(failed_lines)} failed line(s)",
    }


def main() -> None:
    parser = argparse.ArgumentParser(description='Generation-only script from problem_file_gen_qwen2_5_32b_instruct_kani_dnc.ipynb')
    parser.add_argument('--start', type=int, help='Start problem number (inclusive), e.g. 1')
    parser.add_argument('--end', type=int, help='End problem number (inclusive), e.g. 200')
    parser.add_argument('--ids', type=str, help="Comma/space separated IDs, e.g. 'p01,p02,p10' or '1 2 10'")
    parser.add_argument('--temperature', type=float, default=0.4)
    parser.add_argument('--max-output-tokens', type=int, default=32768)
    parser.add_argument('--dry-run', action='store_true', help='Validate IDs/inputs only; no model calls or file writes')
    args = parser.parse_args()

    problem_ids = parse_problem_ids(args.start, args.end, args.ids)

    prompt_header_prefix = PROMPT_HEADER_PATH.read_text()
    prompt_line_prefix = PROMPT_LINE_PATH.read_text()
    domain_pddl_text = DOMAIN_PDDL_PATH.read_text()
    OUTPUT_ROOT.mkdir(parents=True, exist_ok=True)

    print('PROJECT_ROOT:', PROJECT_ROOT)
    print('OUTPUT_ROOT:', OUTPUT_ROOT)
    print('Model:', HF_MODEL_ID)
    print('Num problems:', len(problem_ids))
    print('First/last:', problem_ids[0], problem_ids[-1])
    print('Dry run:', args.dry_run)

    if args.dry_run:
        failures = []
        for pid in tqdm(problem_ids, desc='Dry-run validation', unit='problem'):
            try:
                _ = build_header_prompt(pid, prompt_header_prefix, domain_pddl_text)
                parts = load_problem_descriptions(pid)
                init_lines, goal_lines = _split_line_problem_sections(parts['problem_nl_line'])
                if not init_lines or not goal_lines:
                    raise ValueError('empty init or goal lines')
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

    from kani import Kani
    from kani.engines.huggingface import HuggingEngine

    qwen_engine = HuggingEngine(
        model_id=HF_MODEL_ID,
        model_load_kwargs={
            'device_map': 'auto',
            'cache_dir': str(TRANSFORMERS_CACHE_DIR),
        },
    )
    ai = Kani(qwen_engine, system_prompt='')

    failures = []
    for pid in tqdm(problem_ids, desc='DNC generation', unit='problem'):
        try:
            res = process_one_problem_generation(
                ai=ai,
                problem_id=pid,
                prompt_header_prefix=prompt_header_prefix,
                prompt_line_prefix=prompt_line_prefix,
                domain_pddl_text=domain_pddl_text,
                temperature=args.temperature,
                max_output_tokens=args.max_output_tokens,
            )
            if not res.get('ok', False):
                failures.append((pid, res.get('error', 'generation failed')))
        except Exception as e:
            failures.append((pid, str(e)))

    print('\nGeneration done!')
    if failures:
        print('Failed IDs:', ', '.join(pid for pid, _ in failures))
    else:
        print('All succeeded.')


if __name__ == '__main__':
    main()
