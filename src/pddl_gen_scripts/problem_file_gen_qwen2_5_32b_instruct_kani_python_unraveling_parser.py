from __future__ import annotations

import argparse
import re
from pathlib import Path

try:
    from tqdm.auto import tqdm
except Exception:  # pragma: no cover
    def tqdm(iterable, **kwargs):
        return iterable


# Paths match notebook assumptions. Resolve from this file so invocation CWD does not matter.
PROJECT_ROOT = Path(__file__).resolve().parents[2]
DATA_DIR = PROJECT_ROOT / "data"
GT_PDDL_DIR = DATA_DIR / "pddl_unraveling"
MODEL_OUTPUT_ROOT = PROJECT_ROOT / "output" / "direct_pddl_unraveling" / "qwen2_5_32b_instruct_kani_retry3_unraveling"


_fact_line_re = re.compile(r"\(\s*([a-zA-Z\-]+)([^()]*)\)")


def _norm_space(s: str) -> str:
    return re.sub(r"\s+", " ", s.strip())


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


def extract_section_facts_from_pddl(pddl_text: str) -> dict:
    init_idx = pddl_text.find("(:init")
    goal_idx = pddl_text.find("(:goal")
    if init_idx == -1 or goal_idx == -1:
        raise ValueError("PDDL missing :init or :goal section.")

    init_text = pddl_text[init_idx:goal_idx]
    goal_text = pddl_text[goal_idx:]

    def _facts_from_section(sec: str):
        facts = []
        for m in _fact_line_re.finditer(sec):
            pred = m.group(1).strip()
            args = _norm_space(m.group(2)).split()

            if pred in {"clear", "on-table"} and len(args) == 1:
                facts.append((pred, args[0]))
            elif pred == "on" and len(args) == 2:
                facts.append((pred, args[0], args[1]))
            elif pred == "arm-empty" and len(args) == 0:
                facts.append((pred,))
        return facts

    return {
        "init_facts": _facts_from_section(init_text),
        "goal_facts": _facts_from_section(goal_text),
    }


def diff_fact_sections(gt_pddl_text: str, llm_pddl_text: str) -> dict:
    gt_secs = extract_section_facts_from_pddl(gt_pddl_text)
    llm_secs = extract_section_facts_from_pddl(llm_pddl_text)

    gt_init = set(gt_secs["init_facts"])
    gt_goal = set(gt_secs["goal_facts"])
    llm_init = set(llm_secs["init_facts"])
    llm_goal = set(llm_secs["goal_facts"])

    return {
        "init_missing_in_llm": sorted(gt_init - llm_init),
        "init_extra_in_llm": sorted(llm_init - gt_init),
        "goal_missing_in_llm": sorted(gt_goal - llm_goal),
        "goal_extra_in_llm": sorted(llm_goal - gt_goal),
        "perfect_match": gt_init == llm_init and gt_goal == llm_goal,
    }


def pct(count: int, total: int) -> int:
    if total == 0:
        return 0
    return int(round(100.0 * count / total))


def main() -> None:
    parser = argparse.ArgumentParser(description="Parser-only summary for problem_file_gen_qwen2_5_32b_instruct_kani_python_unraveling outputs")
    parser.add_argument("--start", type=int, help="Start problem number (inclusive), e.g. 1")
    parser.add_argument("--end", type=int, help="End problem number (inclusive), e.g. 100")
    parser.add_argument("--ids", type=str, help="Comma/space separated IDs, e.g. 'p01,p02,p10' or '1 2 10'")
    args = parser.parse_args()

    problem_ids = parse_problem_ids(args.start, args.end, args.ids)

    total = len(problem_ids)
    missing_init_n = 0
    extra_init_n = 0
    missing_goal_n = 0
    extra_goal_n = 0
    perfect_n = 0

    processed = 0
    failed_reads = []

    print("PROJECT_ROOT:", PROJECT_ROOT)
    print("GT_PDDL_DIR:", GT_PDDL_DIR)
    print("MODEL_OUTPUT_ROOT:", MODEL_OUTPUT_ROOT)
    print("Num problems:", total)
    print("First/last:", problem_ids[0], problem_ids[-1])

    for pid in tqdm(problem_ids, desc="Parser diff", unit="problem"):
        gt_path = GT_PDDL_DIR / f"{pid}.pddl"
        llm_path = MODEL_OUTPUT_ROOT / pid / "cand_00" / "problem.pddl"

        try:
            gt_text = gt_path.read_text()
            llm_text = llm_path.read_text()
            diff = diff_fact_sections(gt_text, llm_text)
        except Exception as e:
            failed_reads.append((pid, str(e)))
            continue

        processed += 1

        if len(diff["init_missing_in_llm"]) > 0:
            missing_init_n += 1
        if len(diff["init_extra_in_llm"]) > 0:
            extra_init_n += 1
        if len(diff["goal_missing_in_llm"]) > 0:
            missing_goal_n += 1
        if len(diff["goal_extra_in_llm"]) > 0:
            extra_goal_n += 1
        if diff["perfect_match"]:
            perfect_n += 1

    # denominator is requested range size, so read/parse failures penalize summary
    denom = total if total > 0 else 1

    print("\nParser Summary (independent percentages; can sum > 100%):")
    print(f"- missing init: {pct(missing_init_n, denom)}% ({missing_init_n}/{total})")
    print(f"- extra init:   {pct(extra_init_n, denom)}% ({extra_init_n}/{total})")
    print(f"- missing goal: {pct(missing_goal_n, denom)}% ({missing_goal_n}/{total})")
    print(f"- extra goal:   {pct(extra_goal_n, denom)}% ({extra_goal_n}/{total})")
    print(f"- perfect match:{pct(perfect_n, denom)}% ({perfect_n}/{total})")

    print(f"\nProcessed successfully: {processed}/{total}")
    if failed_reads:
        print("Failed IDs (read/parse issues):", ", ".join(pid for pid, _ in failed_reads))


if __name__ == "__main__":
    main()
