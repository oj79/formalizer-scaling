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
PDDL_DIR = PROJECT_ROOT / "data" / "pddl_unraveling_domain" / "Elevators" / "bottom_to_top_delivery"
OUTPUT_ROOT = (
    PROJECT_ROOT
    / "output"
    / "direct_pddl_direct_unraveling"
    / "Elevators"
    / "bottom_to_top_delivery"
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
    body_chars: list[str] = []

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


_PREDICATE_RE = re.compile(
    r"\((next|above|lift-at|passengers|can-hold|reachable-floor|passenger-at)\s+([^()]+?)\)"
)
_TRAVEL_SLOW_RE = re.compile(
    r"\(=\s*\(travel-slow\s+([^()\s]+)\s+([^()\s]+)\)\s+([^()\s]+)\)"
)
_TRAVEL_FAST_RE = re.compile(
    r"\(=\s*\(travel-fast\s+([^()\s]+)\s+([^()\s]+)\)\s+([^()\s]+)\)"
)


def extract_elevators_problem_structure(pddl_text: str) -> dict:
    objects_text = _extract_section_body(pddl_text, "objects")
    init_text = _extract_section_body(pddl_text, "init")
    goal_text = _extract_section_body(pddl_text, "goal")

    object_decls: list[tuple[str, str]] = []
    for line in objects_text.splitlines():
        clean = _norm_space(line)
        if not clean or " - " not in clean:
            continue
        names_part, obj_type = clean.rsplit(" - ", 1)
        for name in names_part.split():
            object_decls.append((name.strip(), obj_type.strip().lower()))

    init_facts: list[tuple[str, ...]] = []
    for m in _PREDICATE_RE.finditer(init_text):
        pred = m.group(1)
        args = _norm_space(m.group(2)).split()
        init_facts.append(tuple([pred] + args))

    for m in _TRAVEL_SLOW_RE.finditer(init_text):
        init_facts.append(("travel-slow", m.group(1).strip(), m.group(2).strip(), m.group(3).strip()))
    for m in _TRAVEL_FAST_RE.finditer(init_text):
        init_facts.append(("travel-fast", m.group(1).strip(), m.group(2).strip(), m.group(3).strip()))

    goal_facts: list[tuple[str, ...]] = []
    for m in _PREDICATE_RE.finditer(goal_text):
        pred = m.group(1)
        args = _norm_space(m.group(2)).split()
        goal_facts.append(tuple([pred] + args))

    return {
        "objects": object_decls,
        "init_facts": init_facts,
        "goal_facts": goal_facts,
    }


def diff_fact_sections(gt_pddl_text: str, llm_pddl_text: str) -> dict:
    gt = extract_elevators_problem_structure(gt_pddl_text)
    llm = extract_elevators_problem_structure(llm_pddl_text)

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
        description="Parser-only summary for problem_file_gen_gemini_direct_pddl_unraveling Elevators outputs"
    )
    parser.add_argument("--start", type=int, help="Start problem number (inclusive), e.g. 1")
    parser.add_argument("--end", type=int, help="End problem number (inclusive), e.g. 10")
    parser.add_argument("--ids", type=str, help="Comma/space separated problem ids, e.g. 'p01,p02,p10'")
    args = parser.parse_args()

    problem_ids = parse_problem_ids(args.start, args.end, args.ids)

    counts = {
        "objects_missing": 0,
        "objects_extra": 0,
        "init_missing": 0,
        "init_extra": 0,
        "goal_missing": 0,
        "goal_extra": 0,
        "perfect_match": 0,
        "processed": 0,
        "skipped": 0,
    }

    for pid in tqdm(problem_ids, desc="Parsing", unit="problem"):
        gt_path = PDDL_DIR / f"{pid}_problem.pddl"
        llm_path = OUTPUT_ROOT / pid / "cand_00" / "problem.pddl"

        if not gt_path.exists() or not llm_path.exists():
            counts["skipped"] += 1
            missing = []
            if not gt_path.exists():
                missing.append(f"GT missing: {gt_path}")
            if not llm_path.exists():
                missing.append(f"LLM missing: {llm_path}")
            print(f"{pid}: skipped ({'; '.join(missing)})")
            continue

        try:
            diff = diff_fact_sections(gt_path.read_text(), llm_path.read_text())
        except Exception as e:
            counts["skipped"] += 1
            print(f"{pid}: skipped (parse error: {e})")
            continue

        counts["processed"] += 1
        if diff["objects_missing_in_llm"]:
            counts["objects_missing"] += 1
        if diff["objects_extra_in_llm"]:
            counts["objects_extra"] += 1
        if diff["init_missing_in_llm"]:
            counts["init_missing"] += 1
        if diff["init_extra_in_llm"]:
            counts["init_extra"] += 1
        if diff["goal_missing_in_llm"]:
            counts["goal_missing"] += 1
        if diff["goal_extra_in_llm"]:
            counts["goal_extra"] += 1
        if diff["perfect_match"]:
            counts["perfect_match"] += 1

    total = len(problem_ids)
    print()
    print("Elevators Gemini direct-PDDL parser summary")
    print(f"- requested problems: {len(problem_ids)}")
    print(f"- processed problems: {counts['processed']}")
    print(f"- skipped problems:   {counts['skipped']}")
    print()
    print("Percent of requested problems with each mismatch type:")
    print(f"- missing objects: {pct(counts['objects_missing'], total)}%")
    print(f"- extra objects:   {pct(counts['objects_extra'], total)}%")
    print(f"- missing init:    {pct(counts['init_missing'], total)}%")
    print(f"- extra init:      {pct(counts['init_extra'], total)}%")
    print(f"- missing goal:    {pct(counts['goal_missing'], total)}%")
    print(f"- extra goal:      {pct(counts['goal_extra'], total)}%")
    print(f"- perfect match:   {pct(counts['perfect_match'], total)}%")


if __name__ == "__main__":
    main()
