from __future__ import annotations

import argparse
import asyncio
import os
import re
import shutil
import subprocess
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
PROMPT_PATH = PROJECT_ROOT / 'prompts' / 'only_pddl_instruction_unraveling.txt'
DOMAIN_PDDL_PATH = DATA_DIR / 'pddl' / 'domain.pddl'
DESC_DIR = DATA_DIR / 'descriptions_unraveling'
OUTPUT_ROOT = PROJECT_ROOT / 'output' / 'direct_pddl_unraveling' / 'qwen2_5_32b_instruct_kani_retry3_unraveling'

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
        raise FileNotFoundError(f"Missing domain NL file: {domain_path}")
    if not problem_path.exists():
        raise FileNotFoundError(f"Missing problem NL file: {problem_path}")

    return domain_path.read_text(), problem_path.read_text()


def build_prompt(problem_id: str, prompt_prefix: str, domain_pddl_text: str) -> str:
    nl_domain, nl_problem = load_problem_descriptions(problem_id)

    return (
        f"{prompt_prefix}\n\n"
        "You are an expert PDDL engineer and expert Python engineer.\n"
        "Create an executable Python generator that writes a syntactically and semantically correct "
        "problem file using the information below.\n\n"
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
        "- Generate ONLY an executable Python generator script.\n"
        "- Wrap it in exactly one <generator>...</generator> block.\n"
        "- Inside <generator>...</generator>, output ONLY raw Python source code.\n"
        "- The first non-whitespace character inside <generator> must be a valid Python token (e.g., def/import).\n"
        "- The script must write ONLY the final problem PDDL to 'problem.pddl' in current working directory.\n"
        "- The script MUST derive init/goal facts algorithmically from compact structure, not hardcoded full fact lists.\n"
        "- Required: at least one loop that constructs predicates (e.g., on/on-table/clear) from computed stacks or parsed patterns.\n"
        "- Required: compute object list from inferred block count (do not hardcode all object names manually).\n"
        "- Disallowed: manually listing full init_state/goal_state facts as constants.\n"
        "- Do NOT include Markdown fences (no ```python, no ```).\n"
        "- Do NOT include comments or prose outside Python statements.\n"
        "- Do not output any <domain_file> block.\n"
        "- Do not output any <problem_file> block.\n"
        "- Do not include any extra text before or after <generator>...</generator>."
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


def extract_generator_code(raw_text: str) -> str:
    text = raw_text or ""
    matches = re.findall(r"<generator>(.*?)</generator>", text, flags=re.DOTALL | re.IGNORECASE)
    if not matches:
        return ""

    code = (matches[-1] or "").strip()

    if code.startswith("```"):
        code = re.sub(r"^```(?:python)?\s*", "", code, flags=re.IGNORECASE)
        code = re.sub(r"\s*```$", "", code)

    return code.strip()


def execute_generator_to_problem(generator_code: str, work_dir: Path, timeout_sec: int = 120) -> dict:
    work_dir = Path(work_dir)
    work_dir.mkdir(parents=True, exist_ok=True)

    generator_path = work_dir / "generator.py"
    generator_path.write_text(generator_code or "")

    proc = subprocess.run(
        ["python", str(generator_path)],
        cwd=str(work_dir),
        capture_output=True,
        text=True,
        timeout=timeout_sec,
    )

    problem_path = work_dir / "problem.pddl"
    if not (problem_path.exists() and problem_path.read_text().strip()):
        candidates = [
            p for p in work_dir.rglob("*.pddl")
            if p.name not in {"domain.pddl", "problem.pddl"}
        ]
        if candidates:
            latest = max(candidates, key=lambda p: p.stat().st_mtime)
            shutil.copyfile(latest, problem_path)

    ok = problem_path.exists() and bool(problem_path.read_text().strip())
    return {
        "ok": ok and (proc.returncode == 0),
        "returncode": proc.returncode,
        "stdout": proc.stdout or "",
        "stderr": proc.stderr or "",
    }


def main() -> None:
    parser = argparse.ArgumentParser(description='Generation-only script from problem_file_gen_qwen2_5_32b_instruct_kani_python_unraveling.ipynb')
    parser.add_argument('--start', type=int, help='Start problem number (inclusive), e.g. 1')
    parser.add_argument('--end', type=int, help='End problem number (inclusive), e.g. 100')
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
            generator_code = extract_generator_code(raw_text)

            cand_dir = OUTPUT_ROOT / pid / 'cand_00'
            cand_dir.mkdir(parents=True, exist_ok=True)

            exec_result = {'ok': False, 'stdout': '', 'stderr': ''}
            problem_pddl_text = ''

            if generator_code.strip():
                exec_result = execute_generator_to_problem(generator_code, work_dir=cand_dir, timeout_sec=120)
                if (cand_dir / 'problem.pddl').exists():
                    problem_pddl_text = (cand_dir / 'problem.pddl').read_text()

            (cand_dir / 'raw.txt').write_text(raw_text or '')
            (cand_dir / 'generator.py').write_text(generator_code or '')
            (cand_dir / 'problem.pddl').write_text(problem_pddl_text or '')
            (cand_dir / 'domain.pddl').write_text(domain_pddl_text)
            (cand_dir / 'generator_exec_stdout.txt').write_text(exec_result.get('stdout', '') or '')
            (cand_dir / 'generator_exec_stderr.txt').write_text(exec_result.get('stderr', '') or '')

            ok = bool(generator_code.strip()) and bool(exec_result.get('ok', False)) and bool(problem_pddl_text.strip())
            if not ok:
                failures.append((pid, 'generator missing, execution failed, or empty problem.pddl'))
        except Exception as e:
            failures.append((pid, str(e)))

    print('\nGeneration done!')
    if failures:
        print('Failed IDs:', ', '.join(pid for pid, _ in failures))
    else:
        print('All succeeded.')


if __name__ == '__main__':
    main()
