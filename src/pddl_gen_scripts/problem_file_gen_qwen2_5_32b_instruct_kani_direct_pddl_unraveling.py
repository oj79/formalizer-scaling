from __future__ import annotations

import argparse
import asyncio
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
PROMPT_PATH = PROJECT_ROOT / 'prompts' / 'only_pddl_instruction.txt'
DOMAIN_PDDL_PATH = DATA_DIR / 'pddl' / 'domain.pddl'
DESC_DIR = DATA_DIR / 'descriptions_unraveling'
OUTPUT_ROOT = PROJECT_ROOT / 'output' / 'direct_pddl_direct_unraveling' / 'qwen2_5_32b_instruct_kani'

HF_MODEL_ID = 'Qwen/Qwen2.5-32B-Instruct'


def pid_from_int(i: int) -> str:
    return f"p{i:02d}" if i < 100 else f"p{i}"


def parse_problem_ids(start: int | None, end: int | None, ids: str | None) -> list[str]:
    if ids:
        out = []
        for token in re.split(r"[\s,]+", ids.strip()):
            if not token:
                continue
            out.append(token if token.startswith("p") else pid_from_int(int(token)))
        return out

    if start is None or end is None:
        raise ValueError("Provide either --ids or both --start and --end.")
    if start > end:
        raise ValueError("--start must be <= --end")

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


def extract_problem_pddl(raw_text: str) -> str:
    if not raw_text:
        return ""

    matches = re.findall(r"<problem_file>(.*?)</problem_file>", raw_text, flags=re.DOTALL | re.IGNORECASE)
    if matches:
        return matches[-1].strip()
    return ""


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


def main() -> None:
    parser = argparse.ArgumentParser(description='Generation-only script from problem_file_gen_qwen2_5_32b_instruct_kani_direct_pddl_unraveling.ipynb')
    parser.add_argument('--start', type=int, help='Start problem number (inclusive), e.g. 1')
    parser.add_argument('--end', type=int, help='End problem number (inclusive), e.g. 200')
    parser.add_argument('--ids', type=str, help="Comma/space separated IDs, e.g. 'p01,p02,p10' or '1 2 10'")
    parser.add_argument('--temperature', type=float, default=0.4)
    parser.add_argument('--max-output-tokens', type=int, default=32768)
    parser.add_argument('--dry-run', action='store_true', help='Validate IDs/inputs only; no model calls or file writes')
    args = parser.parse_args()

    problem_ids = parse_problem_ids(args.start, args.end, args.ids)

    prompt_prefix = PROMPT_PATH.read_text()
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
    for pid in tqdm(problem_ids, desc='LLM generation', unit='problem'):
        try:
            prompt = build_prompt(pid, prompt_prefix, domain_pddl_text)
            raw_text = call_qwen(ai, prompt, temperature=args.temperature, max_output_tokens=args.max_output_tokens)
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
