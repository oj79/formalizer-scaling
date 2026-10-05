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
PDDL_DIR = (
    PROJECT_ROOT
    / "data"
    / "pddl_unraveling_domain"
    / "Elevators"
    / "bottom_to_top_delivery"
)
OUTPUT_ROOT = (
    PROJECT_ROOT
    / "output"
    / "direct_pddl_unraveling"
    / "Elevators"
    / "bottom_to_top_delivery"
    / "qwen2_5_32b_instruct_kani_retry3_unraveling"
)


def _norm_space(s: str) -> str:
    return re.sub(r"\s+", " ", s.strip())


def _canon_symbol(sym: str) -> str:
    s = sym.strip().lower()

    m = re.fullmatch(r"(?:n|count)-?(\d+)", s)
    if m:
        return f"n{int(m.group(1))}"

    m = re.fullmatch(r"floor-?(\d+)", s)
    if m:
        floor_number = int(m.group(1))
        return f"n{floor_number - 1}" if floor_number >= 1 else s

    m = re.fullmatch(r"(?:p|passenger|person)-?(\d+)", s)
    if m:
        return f"p{int(m.group(1))}"

    m = re.fullmatch(r"(?:slow|slow-elevator)-?(\d+)", s)
    if m:
        return f"slow{int(m.group(1))}"

    m = re.fullmatch(r"(?:fast|fast-elevator)-?(\d+)", s)
    if m:
        return f"fast{int(m.group(1))}"

    return s


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
    start = pddl_text.lower().find(marker)
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
    r"\((passenger-at|boarded|lift-at|reachable-floor|above|passengers|can-hold|next)\s+([^()]+?)\)",
    flags=re.IGNORECASE,
)
_TRAVEL_COST_RE = re.compile(
    r"\(=\s*\((travel-slow|travel-fast)\s+([^()\s]+)\s+([^()\s]+)\)\s+([^()\s]+)\)",
    flags=re.IGNORECASE,
)
_TOTAL_COST_RE = re.compile(
    r"\(=\s*\(total-cost\)\s+([^()\s]+)\)",
    flags=re.IGNORECASE,
)


def _extract_typed_objects(objects_text: str) -> list[tuple[str, str]]:
    tokens = _norm_space(objects_text).split()
    object_decls: list[tuple[str, str]] = []
    pending_names: list[str] = []
    i = 0

    while i < len(tokens):
        token = tokens[i]
        if token == "-":
            if not pending_names or i + 1 >= len(tokens):
                raise ValueError("Malformed typed object declaration.")
            obj_type = tokens[i + 1].lower()
            object_decls.extend((_canon_symbol(name), obj_type) for name in pending_names)
            pending_names = []
            i += 2
        else:
            pending_names.append(token)
            i += 1

    if pending_names:
        object_decls.extend((_canon_symbol(name), "object") for name in pending_names)

    return object_decls


def _extract_predicate_facts(section_text: str) -> list[tuple[str, ...]]:
    facts: list[tuple[str, ...]] = []
    for match in _PREDICATE_RE.finditer(section_text):
        predicate = match.group(1).lower()
        arguments = [_canon_symbol(arg) for arg in _norm_space(match.group(2)).split()]
        facts.append(tuple([predicate] + arguments))
    return facts


def extract_elevators_problem_structure(pddl_text: str) -> dict:
    objects_text = _extract_section_body(pddl_text, "objects")
    init_text = _extract_section_body(pddl_text, "init")
    goal_text = _extract_section_body(pddl_text, "goal")

    init_facts = _extract_predicate_facts(init_text)
    for match in _TRAVEL_COST_RE.finditer(init_text):
        init_facts.append(
            (
                match.group(1).lower(),
                _canon_symbol(match.group(2)),
                _canon_symbol(match.group(3)),
                match.group(4).strip(),
            )
        )
    for match in _TOTAL_COST_RE.finditer(init_text):
        init_facts.append(("total-cost", match.group(1).strip()))

    return {
        "objects": _extract_typed_objects(objects_text),
        "init_facts": init_facts,
        "goal_facts": _extract_predicate_facts(goal_text),
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
        "objects_match_count": len(gt_objects & llm_objects),
        "init_match_count": len(gt_init & llm_init),
        "goal_match_count": len(gt_goal & llm_goal),
        "objects_total_gt": len(gt_objects),
        "objects_total_llm": len(llm_objects),
        "init_total_gt": len(gt_init),
        "init_total_llm": len(llm_init),
        "goal_total_gt": len(gt_goal),
        "goal_total_llm": len(llm_goal),
        "perfect_match": (
            gt_objects == llm_objects
            and gt_init == llm_init
            and gt_goal == llm_goal
        ),
    }


def pct(count: int, total: int) -> int:
    if total == 0:
        return 0
    return int(round(100.0 * count / total))


def main() -> None:
    parser = argparse.ArgumentParser(
        description=(
            "Parser-only summary for problem_file_gen_qwen2_5_32b_instruct_kani_python_unraveling "
            "Elevators outputs"
        )
    )
    parser.add_argument("--start", type=int, help="Start problem number (inclusive), e.g. 1")
    parser.add_argument("--end", type=int, help="End problem number (inclusive), e.g. 10")
    parser.add_argument(
        "--ids",
        type=str,
        help="Comma/space separated problem ids, e.g. 'p01,p02,p10'",
    )
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
        except Exception as exc:
            problem_ids_by_category["skipped"].append(pid)
            print(f"{pid}: skipped (parse error: {exc})")
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
    print("Elevators Qwen2.5 32B Instruct Kani Python-unraveling parser summary")
    print(f"- requested problems: {len(problem_ids)}")
    print(
        f"- processed problems: {len(problem_ids_by_category['processed'])} "
        f"{ids_text(problem_ids_by_category['processed'])}"
    )
    print(
        f"- skipped problems:   {len(problem_ids_by_category['skipped'])} "
        f"{ids_text(problem_ids_by_category['skipped'])}"
    )
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
