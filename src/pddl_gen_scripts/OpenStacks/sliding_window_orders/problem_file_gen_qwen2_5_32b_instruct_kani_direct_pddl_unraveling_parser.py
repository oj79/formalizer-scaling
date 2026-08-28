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
    / "direct_pddl_direct_unraveling"
    / "OpenStacks"
    / "sliding_window_orders"
    / "qwen2_5_32b_instruct_kani_retry3_unraveling"
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


_PREDICATE_RE = re.compile(r"\((next-count|stacks-avail|waiting|includes|shipped)\s+([^()]+?)\)")


def _parse_typed_objects(objects_text: str) -> list[tuple[str, str]]:
    tokens = objects_text.replace("\n", " ").split()
    object_decls: list[tuple[str, str]] = []
    pending_names: list[str] = []
    i = 0

    while i < len(tokens):
        tok = tokens[i]
        if tok == "-":
            if not pending_names or i + 1 >= len(tokens):
                raise ValueError("Malformed :objects section.")
            obj_type = tokens[i + 1].strip().lower()
            for name in pending_names:
                object_decls.append((name.strip(), obj_type))
            pending_names = []
            i += 2
        else:
            pending_names.append(tok.strip())
            i += 1

    if pending_names:
        raise ValueError("Malformed :objects section: trailing names without type.")

    return object_decls


def extract_openstacks_problem_structure(pddl_text: str) -> dict:
    objects_text = _extract_section_body(pddl_text, "objects")
    init_text = _extract_section_body(pddl_text, "init")
    goal_text = _extract_section_body(pddl_text, "goal")

    object_decls = _parse_typed_objects(objects_text)

    init_facts: list[tuple[str, ...]] = []
    for m in _PREDICATE_RE.finditer(init_text):
        pred = m.group(1)
        args = _norm_space(m.group(2)).split()
        init_facts.append(tuple([pred] + args))

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
        description="Parser-only summary for problem_file_gen_qwen2_5_32b_instruct_kani_direct_pddl_unraveling OpenStacks outputs"
    )
    parser.add_argument("--start", type=int, help="Start problem number (inclusive), e.g. 1")
    parser.add_argument("--end", type=int, help="End problem number (inclusive), e.g. 10")
    parser.add_argument("--ids", type=str, help="Comma/space separated problem ids, e.g. 'p01,p02,p10'")
    args = parser.parse_args()

    problem_ids = parse_problem_ids(args.start, args.end, args.ids)

    problem_ids_by_category = {
        "objects_missing": [],
        "objects_extra": [],
        "init_missing": [],
        "init_extra": [],
        "goal_missing": [],
        "goal_extra": [],
        "perfect_match": [],
        "processed": [],
        "skipped": [],
    }

    for pid in tqdm(problem_ids, desc="Parsing", unit="problem"):
        gt_path = PDDL_DIR / f"{pid}_problem.pddl"
        llm_path = OUTPUT_ROOT / pid / "cand_00" / "problem.pddl"

        if not gt_path.exists() or not llm_path.exists():
            problem_ids_by_category["skipped"].append(pid)
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
            problem_ids_by_category["skipped"].append(pid)
            print(f"{pid}: skipped (parse error: {e})")
            continue

        problem_ids_by_category["processed"].append(pid)
        if diff["objects_missing_in_llm"]:
            problem_ids_by_category["objects_missing"].append(pid)
        if diff["objects_extra_in_llm"]:
            problem_ids_by_category["objects_extra"].append(pid)
        if diff["init_missing_in_llm"]:
            problem_ids_by_category["init_missing"].append(pid)
        if diff["init_extra_in_llm"]:
            problem_ids_by_category["init_extra"].append(pid)
        if diff["goal_missing_in_llm"]:
            problem_ids_by_category["goal_missing"].append(pid)
        if diff["goal_extra_in_llm"]:
            problem_ids_by_category["goal_extra"].append(pid)
        if diff["perfect_match"]:
            problem_ids_by_category["perfect_match"].append(pid)

    total = len(problem_ids)

    def ids_text(ids: list[str]) -> str:
        return ", ".join(ids) if ids else "none"

    def summary_line(label: str, key: str) -> str:
        ids = problem_ids_by_category[key]
        return f"- {label}: {pct(len(ids), total)}% ({len(ids)}/{total}) {ids_text(ids)}"

    print()
    print("OpenStacks Qwen2.5/Kani direct-PDDL parser summary")
    print(f"- requested problems: {len(problem_ids)}")
    print(f"- processed problems: {len(problem_ids_by_category['processed'])} {ids_text(problem_ids_by_category['processed'])}")
    print(f"- skipped problems:   {len(problem_ids_by_category['skipped'])} {ids_text(problem_ids_by_category['skipped'])}")
    print()
    print("Percent of requested problems with each mismatch type:")
    print(summary_line("missing objects", "objects_missing"))
    print(summary_line("extra objects  ", "objects_extra"))
    print(summary_line("missing init   ", "init_missing"))
    print(summary_line("extra init     ", "init_extra"))
    print(summary_line("missing goal   ", "goal_missing"))
    print(summary_line("extra goal     ", "goal_extra"))
    print(summary_line("perfect match  ", "perfect_match"))


if __name__ == "__main__":
    main()
