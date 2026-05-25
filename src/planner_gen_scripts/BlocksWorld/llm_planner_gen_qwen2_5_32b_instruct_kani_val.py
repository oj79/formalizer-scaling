from __future__ import annotations

import argparse
import re
import subprocess
from pathlib import Path

try:
    from tqdm.auto import tqdm
except Exception:  # pragma: no cover
    def tqdm(iterable, **kwargs):
        return iterable


# Paths match notebook assumptions. Resolve from this file so invocation CWD does not matter.
PROJECT_ROOT = Path(__file__).resolve().parents[2]
DATA_DIR = PROJECT_ROOT / 'data'
DOMAIN_PDDL_PATH = DATA_DIR / 'pddl' / 'domain.pddl'
OUTPUT_ROOT = PROJECT_ROOT / 'output' / 'llm_planner' / 'qwen2_5_32b_instruct'
VAL_PATH = Path.home() / 'tools' / 'VAL' / 'build' / 'linux64' / 'Release' / 'bin' / 'Validate'


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


def run_val(domain_pddl_path: Path, problem_pddl_path: Path, plan_path: Path) -> dict:
    if not VAL_PATH.exists():
        return {
            'val_ok': False,
            'val_output': f'VAL executable not found: {VAL_PATH}',
        }

    cmd = [str(VAL_PATH), '-v', str(domain_pddl_path), str(problem_pddl_path), str(plan_path)]
    proc = subprocess.run(cmd, capture_output=True, text=True)

    out_text = (proc.stdout or '').strip()
    err_text = (proc.stderr or '').strip()
    merged = (out_text + ('\n' + err_text if err_text else '')).strip()

    val_ok = 'Plan valid' in merged
    return {
        'val_ok': val_ok,
        'val_output': merged,
    }


def pct(count: int, total: int) -> int:
    if total == 0:
        return 0
    return int(round(100.0 * count / total))


def main() -> None:
    parser = argparse.ArgumentParser(description='VAL-only script for llm_planner_gen_qwen2_5_32b_instruct_kani outputs')
    parser.add_argument('--start', type=int, help='Start problem number (inclusive), e.g. 1')
    parser.add_argument('--end', type=int, help='End problem number (inclusive), e.g. 200')
    parser.add_argument('--ids', type=str, help="Comma/space separated IDs, e.g. 'p01,p02,p10' or '1 2 10'")
    args = parser.parse_args()

    problem_ids = parse_problem_ids(args.start, args.end, args.ids)

    total = len(problem_ids)
    valid_n = 0
    processed = 0
    failed_checks = []

    print('PROJECT_ROOT:', PROJECT_ROOT)
    print('OUTPUT_ROOT:', OUTPUT_ROOT)
    print('VAL exists:', VAL_PATH.exists())
    print('Num problems:', total)
    print('First/last:', problem_ids[0], problem_ids[-1])

    for pid in tqdm(problem_ids, desc='VAL check', unit='problem'):
        cand_dir = OUTPUT_ROOT / pid / 'cand_00'
        plan_path = cand_dir / 'plan.txt'
        gt_problem_path = DATA_DIR / 'pddl' / f'{pid}.pddl'

        try:
            if not plan_path.exists():
                raise FileNotFoundError(f'Missing plan file: {plan_path}')
            plan_text = plan_path.read_text().strip()
            if not plan_text:
                raise ValueError('Empty plan.txt (no actions).')
            if not gt_problem_path.exists():
                raise FileNotFoundError(f'Missing ground-truth problem file: {gt_problem_path}')

            val_result = run_val(DOMAIN_PDDL_PATH, gt_problem_path, plan_path)
            processed += 1
            if bool(val_result.get('val_ok', False)):
                valid_n += 1
        except Exception as e:
            failed_checks.append((pid, str(e)))

    denom = total if total > 0 else 1

    print('\nVAL Summary:')
    print(f'- valid: {pct(valid_n, denom)}% ({valid_n}/{total})')
    print(f'\nProcessed successfully: {processed}/{total}')
    if failed_checks:
        print('Failed IDs (VAL precheck issues):', ', '.join(pid for pid, _ in failed_checks))


if __name__ == '__main__':
    main()
