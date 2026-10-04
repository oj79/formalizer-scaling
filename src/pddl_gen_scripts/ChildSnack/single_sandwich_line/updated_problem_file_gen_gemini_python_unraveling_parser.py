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
PDDL_DIR = PROJECT_ROOT / "data" / "pddl_unraveling_domain" / "ChildSnack" / "single_sandwich_line"
OUTPUT_ROOT = (
    PROJECT_ROOT
    / "output"
    / "direct_pddl_unraveling"
    / "ChildSnack"
    / "single_sandwich_line"
    / "updated_gemini_3_flash"
)


def _norm_space(s: str) -> str:
    return re.sub(r"\s+", " ", s.strip())


def _canon_symbol(sym: str) -> str:
    s = sym.strip().lower()
    m = re.fullmatch(r"(?:sandwich|sandw|sand|s)-?(\d+)", s)
    if m:
        return f"sandw{m.group(1)}"
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


_PREDICATE_RE = re.compile(
    r"\((at_kitchen_bread|at_kitchen_content|no_gluten_bread|no_gluten_content|allergic_gluten|not_allergic_gluten|served|notexist)\s+([^()]+?)\)"
)
_AT_RE = re.compile(r"\(at\s+([^()\s]+)\s+([^()\s]+)\)")
_WAITING_RE = re.compile(r"\(waiting\s+([^()\s]+)\s+([^()\s]+)\)")


def extract_childsnack_problem_structure(pddl_text: str) -> dict:
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
            object_decls.append((_canon_symbol(name), obj_type.strip().lower()))

    init_facts = []
    for m in _PREDICATE_RE.finditer(init_text):
        pred = m.group(1)
        args = [_canon_symbol(x) for x in _norm_space(m.group(2)).split()]
        init_facts.append(tuple([pred] + args))
    for m in _AT_RE.finditer(init_text):
        init_facts.append(("at", _canon_symbol(m.group(1).strip()), _canon_symbol(m.group(2).strip())))
    for m in _WAITING_RE.finditer(init_text):
        init_facts.append(("waiting", _canon_symbol(m.group(1).strip()), _canon_symbol(m.group(2).strip())))

    goal_facts = []
    for m in _PREDICATE_RE.finditer(goal_text):
        pred = m.group(1)
        args = [_canon_symbol(x) for x in _norm_space(m.group(2)).split()]
        goal_facts.append(tuple([pred] + args))

    return {
        "objects": object_decls,
        "init_facts": init_facts,
        "goal_facts": goal_facts,
    }


def diff_fact_sections(gt_pddl_text: str, llm_pddl_text: str) -> dict:
    gt = extract_childsnack_problem_structure(gt_pddl_text)
    llm = extract_childsnack_problem_structure(llm_pddl_text)

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
        description="Parser-only summary for updated problem_file_gen_gemini_python_unraveling ChildSnack outputs"
    )
    parser.add_argument("--start", type=int, help="Start problem number (inclusive), e.g. 1")
    parser.add_argument("--end", type=int, help="End problem number (inclusive), e.g. 10")
    parser.add_argument("--ids", type=str, help="Comma/space separated IDs, e.g. 'p01,p02,p10' or '1 2 10'")
    args = parser.parse_args()

    problem_ids = parse_problem_ids(args.start, args.end, args.ids)
    total = len(problem_ids)

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

    print("PROJECT_ROOT:", PROJECT_ROOT)
    print("PDDL_DIR:", PDDL_DIR)
    print("OUTPUT_ROOT:", OUTPUT_ROOT)
    print("Num problems:", total)
    if problem_ids:
        print("First/last:", problem_ids[0], problem_ids[-1])

    for pid in tqdm(problem_ids, desc="Parser diff", unit="problem"):
        gt_path = PDDL_DIR / f"{pid}_problem.pddl"
        llm_path = OUTPUT_ROOT / pid / "cand_00" / "problem.pddl"

        try:
            gt_text = gt_path.read_text()
            llm_text = llm_path.read_text()
            diff = diff_fact_sections(gt_text, llm_text)
        except Exception as e:
            problem_ids_by_category["skipped"].append(pid)
            print(f"{pid}: skipped ({e})")
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

    def ids_text(ids: list[str]) -> str:
        return ", ".join(ids) if ids else "none"

    def summary_line(label: str, key: str) -> str:
        ids = problem_ids_by_category[key]
        return f"- {label}: {pct(len(ids), total)}% ({len(ids)}/{total}) {ids_text(ids)}"

    print("\nChildSnack Gemini python-generator parser summary")
    print(f"- requested problems: {total}")
    print(
        f"- processed problems: {len(problem_ids_by_category['processed'])} "
        f"{ids_text(problem_ids_by_category['processed'])}"
    )
    print(
        f"- skipped problems:   {len(problem_ids_by_category['skipped'])} "
        f"{ids_text(problem_ids_by_category['skipped'])}"
    )
    print("\nPercent of requested problems with each mismatch type:")
    print(summary_line("missing objects", "objects_missing"))
    print(summary_line("extra objects  ", "objects_extra"))
    print(summary_line("missing init   ", "init_missing"))
    print(summary_line("extra init     ", "init_extra"))
    print(summary_line("missing goal   ", "goal_missing"))
    print(summary_line("extra goal     ", "goal_extra"))
    print(summary_line("perfect match  ", "perfect_match"))


if __name__ == "__main__":
    main()
