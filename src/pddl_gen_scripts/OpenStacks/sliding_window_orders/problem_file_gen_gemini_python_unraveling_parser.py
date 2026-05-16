from __future__ import annotations

import argparse
import re
from pathlib import Path

try:
    from tqdm.auto import tqdm
except Exception:  # pragma: no cover
    def tqdm(iterable, **kwargs):
        return iterable


PROJECT_ROOT = Path(__file__).resolve().parents[4]
PDDL_DIR = PROJECT_ROOT / "data" / "pddl_unraveling_domain" / "OpenStacks" / "sliding_window_orders"
OUTPUT_ROOT = (
    PROJECT_ROOT
    / "output"
    / "direct_pddl_unraveling"
    / "OpenStacks"
    / "sliding_window_orders"
    / "gemini_3_flash"
)


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


def _extract_section_body(pddl_text: str, section_name: str) -> str:
    marker = f"(:{section_name}"
    start = pddl_text.find(marker)
    if start == -1:
        raise ValueError(f"PDDL missing :{section_name} section.")

    i = start + len(marker)
    depth = 1
    body_chars = []

    while i < len(pddl_text) and depth > 0:
        ch = pddl_text[i]
        if ch == "(":
            depth += 1
        elif ch == ")":
            depth -= 1
            if depth == 0:
                break
        body_chars.append(ch)
        i += 1

    if depth != 0:
        raise ValueError(f"Unbalanced parentheses while reading :{section_name} section.")

    return "".join(body_chars)


_NEXT_COUNT_RE = re.compile(r"\(next-count\s+([^()\s]+)\s+([^()\s]+)\)")
_STACKS_AVAIL_RE = re.compile(r"\(stacks-avail\s+([^()\s]+)\)")
_WAITING_RE = re.compile(r"\(waiting\s+([^()\s]+)\)")
_INCLUDES_RE = re.compile(r"\(includes\s+([^()\s]+)\s+([^()\s]+)\)")
_SHIPPED_RE = re.compile(r"\(shipped\s+([^()\s]+)\)")


def extract_openstacks_problem_structure(pddl_text: str) -> dict:
    objects_text = _extract_section_body(pddl_text, "objects")
    init_text = _extract_section_body(pddl_text, "init")
    goal_text = _extract_section_body(pddl_text, "goal")

    object_decls = []
    for line in objects_text.splitlines():
        clean = _norm_space(line)
        if not clean or " - " not in clean:
            continue
        names_part, obj_type = clean.rsplit(" - ", 1)
        for name in names_part.split():
            object_decls.append((name.strip(), obj_type.strip().lower()))

    init_facts = []
    for m in _NEXT_COUNT_RE.finditer(init_text):
        init_facts.append(("next-count", m.group(1).strip(), m.group(2).strip()))
    for m in _STACKS_AVAIL_RE.finditer(init_text):
        init_facts.append(("stacks-avail", m.group(1).strip()))
    for m in _WAITING_RE.finditer(init_text):
        init_facts.append(("waiting", m.group(1).strip()))
    for m in _INCLUDES_RE.finditer(init_text):
        init_facts.append(("includes", m.group(1).strip(), m.group(2).strip()))

    goal_facts = []
    for m in _SHIPPED_RE.finditer(goal_text):
        goal_facts.append(("shipped", m.group(1).strip()))

    return {
        "objects": object_decls,
        "init_facts": init_facts,
        "goal_facts": goal_facts,
    }


def diff_fact_sections(gt_pddl_text: str, llm_pddl_text: str) -> dict:
    gt = extract_openstacks_problem_structure(gt_pddl_text)
    llm = extract_openstacks_problem_structure(llm_pddl_text)

    gt_objects = set(gt["objects"])
    llm_objects = set(llm["objects"])
    gt_init = set(gt["init_facts"])
    llm_init = set(llm["init_facts"])
    gt_goal = set(gt["goal_facts"])
    llm_goal = set(llm["goal_facts"])

    return {
        "objects_missing_in_llm": sorted(gt_objects - llm_objects),
        "objects_extra_in_llm": sorted(llm_objects - gt_objects),
        "init_missing_in_llm": sorted(gt_init - llm_init),
        "init_extra_in_llm": sorted(llm_init - gt_init),
        "goal_missing_in_llm": sorted(gt_goal - llm_goal),
        "goal_extra_in_llm": sorted(llm_goal - gt_goal),
        "perfect_match": gt_objects == llm_objects and gt_init == llm_init and gt_goal == llm_goal,
    }


def pct(count: int, total: int) -> int:
    if total == 0:
        return 0
    return int(round(100.0 * count / total))


def main() -> None:
    parser = argparse.ArgumentParser(
        description="Parser-only summary for problem_file_gen_gemini_python_unraveling OpenStacks outputs"
    )
    parser.add_argument("--start", type=int, help="Start problem number (inclusive), e.g. 1")
    parser.add_argument("--end", type=int, help="End problem number (inclusive), e.g. 10")
    parser.add_argument("--ids", type=str, help="Comma/space separated IDs, e.g. 'p01,p02,p10' or '1 2 10'")
    args = parser.parse_args()

    problem_ids = parse_problem_ids(args.start, args.end, args.ids)
    total = len(problem_ids)

    missing_objects_n = 0
    extra_objects_n = 0
    missing_init_n = 0
    extra_init_n = 0
    missing_goal_n = 0
    extra_goal_n = 0
    perfect_n = 0
    category_problem_ids = {
        "missing_objects": [],
        "extra_objects": [],
        "missing_init": [],
        "extra_init": [],
        "missing_goal": [],
        "extra_goal": [],
        "perfect_match": [],
    }

    processed = 0
    failed_reads: list[tuple[str, str]] = []

    print("PROJECT_ROOT:", PROJECT_ROOT)
    print("PDDL_DIR:", PDDL_DIR)
    print("OUTPUT_ROOT:", OUTPUT_ROOT)
    print("Num problems:", total)
    print("First/last:", problem_ids[0], problem_ids[-1])

    for pid in tqdm(problem_ids, desc="Parser diff", unit="problem"):
        gt_path = PDDL_DIR / f"{pid}_problem.pddl"
        llm_path = OUTPUT_ROOT / pid / "cand_00" / "problem.pddl"

        try:
            gt_text = gt_path.read_text()
            llm_text = llm_path.read_text()
            diff = diff_fact_sections(gt_text, llm_text)
        except Exception as e:
            failed_reads.append((pid, str(e)))
            continue

        processed += 1
        if diff["objects_missing_in_llm"]:
            missing_objects_n += 1
            category_problem_ids["missing_objects"].append(pid)
        if diff["objects_extra_in_llm"]:
            extra_objects_n += 1
            category_problem_ids["extra_objects"].append(pid)
        if diff["init_missing_in_llm"]:
            missing_init_n += 1
            category_problem_ids["missing_init"].append(pid)
        if diff["init_extra_in_llm"]:
            extra_init_n += 1
            category_problem_ids["extra_init"].append(pid)
        if diff["goal_missing_in_llm"]:
            missing_goal_n += 1
            category_problem_ids["missing_goal"].append(pid)
        if diff["goal_extra_in_llm"]:
            extra_goal_n += 1
            category_problem_ids["extra_goal"].append(pid)
        if diff["perfect_match"]:
            perfect_n += 1
            category_problem_ids["perfect_match"].append(pid)

    def problem_suffix(category: str) -> str:
        pids = category_problem_ids[category]
        if not pids:
            return ""
        return f" (problems: {', '.join(pids)})"

    print("\nParser Summary (independent percentages; can sum > 100%):")
    print(f"- missing objects: {pct(missing_objects_n, processed)}% ({missing_objects_n}/{processed}){problem_suffix('missing_objects')}")
    print(f"- extra objects:   {pct(extra_objects_n, processed)}% ({extra_objects_n}/{processed}){problem_suffix('extra_objects')}")
    print(f"- missing init:    {pct(missing_init_n, processed)}% ({missing_init_n}/{processed}){problem_suffix('missing_init')}")
    print(f"- extra init:      {pct(extra_init_n, processed)}% ({extra_init_n}/{processed}){problem_suffix('extra_init')}")
    print(f"- missing goal: {pct(missing_goal_n, processed)}% ({missing_goal_n}/{processed}){problem_suffix('missing_goal')}")
    print(f"- extra goal:   {pct(extra_goal_n, processed)}% ({extra_goal_n}/{processed}){problem_suffix('extra_goal')}")
    print(f"- perfect match:{pct(perfect_n, processed)}% ({perfect_n}/{processed}){problem_suffix('perfect_match')}")

    print(f"\nProcessed successfully: {processed}/{total}")
    if failed_reads:
        print("Failed IDs (read/parse issues):", ", ".join(pid for pid, _ in failed_reads))


if __name__ == "__main__":
    main()
