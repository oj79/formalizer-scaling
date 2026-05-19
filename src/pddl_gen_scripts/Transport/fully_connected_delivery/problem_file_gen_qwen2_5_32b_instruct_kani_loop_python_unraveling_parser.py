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
PDDL_DIR = PROJECT_ROOT / "data" / "pddl_unraveling_domain" / "Transport" / "fully_connected_delivery"
OUTPUT_ROOT = (
    PROJECT_ROOT
    / "output"
    / "direct_pddl_unraveling"
    / "Transport"
    / "fully_connected_delivery"
    / "qwen2_5_32b_instruct_kani_loop_unraveling"
)


def _compact_symbol_text(s: str) -> str:
    return re.sub(r"[\s_-]+", "", s.strip().lower())


def _norm_space(s: str) -> str:
    return re.sub(r"\s+", " ", s.strip())


def _canon_symbol(sym: str) -> str:
    s = _compact_symbol_text(sym)

    m = re.fullmatch(r"(?:loc|location)(\d+)", s)
    if m:
        return f"location-{m.group(1)}"

    m = re.fullmatch(r"(?:truck|vehicle|v)(\d+)", s)
    if m:
        return f"truck-{m.group(1)}"

    m = re.fullmatch(r"(?:package|pkg|p)(\d+)", s)
    if m:
        return f"package-{m.group(1)}"

    m = re.fullmatch(r"(?:capacity|cap)(\d+)", s)
    if m:
        return f"capacity-{m.group(1)}"

    if s == "location":
        return "location"
    if s == "package":
        return "package"
    if s == "vehicle":
        return "vehicle"
    if s == "capacitynumber":
        return "capacity-number"

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


_PREDICATE_RE = re.compile(r"\((road|at|in|capacity|capacity-predecessor)\s+([^()]+?)\)")
_ROAD_LENGTH_RE = re.compile(r"\(=\s*\(road-length\s+([^()\s]+)\s+([^()\s]+)\)\s+([^()\s]+)\)")
_VALID_TRANSPORT_TYPES = {"location", "package", "vehicle", "capacity-number"}

_TYPE_MARKER_RE = re.compile(
    r"""
    -\s*
    (?P<type>
        l\s*o\s*c\s*a\s*t\s*i\s*o\s*n
        |
        p\s*a\s*c\s*k\s*a\s*g\s*e
        |
        v\s*e\s*h\s*i\s*c\s*l\s*e
        |
        c\s*a\s*p\s*a\s*c\s*i\s*t\s*y\s*(?:-\s*|\s+)n\s*u\s*m\s*b\s*e\s*r
    )
    """,
    flags=re.IGNORECASE | re.VERBOSE,
)

_LOCATION_NAME_RE = re.compile(r"(?i)(?:loc|l\s*o\s*c|location|l\s*o\s*c\s*a\s*t\s*i\s*o\s*n)\s*[-_\s]?\s*(\d+)")
_PACKAGE_NAME_RE = re.compile(r"(?i)(?:pkg|p\s*k\s*g|package|p\s*a\s*c\s*k\s*a\s*g\s*e|p)\s*[-_\s]?\s*(\d+)")
_VEHICLE_NAME_RE = re.compile(r"(?i)(?:truck|t\s*r\s*u\s*c\s*k|vehicle|v\s*e\s*h\s*i\s*c\s*l\s*e|v)\s*[-_\s]?\s*(\d+)")
_CAPACITY_NAME_RE = re.compile(r"(?i)(?:cap|c\s*a\s*p|capacity|c\s*a\s*p\s*a\s*c\s*i\s*t\s*y)\s*[-_\s]?\s*(\d+)")

_NAME_PATTERNS_BY_TYPE = {
    "location": _LOCATION_NAME_RE,
    "package": _PACKAGE_NAME_RE,
    "vehicle": _VEHICLE_NAME_RE,
    "capacity-number": _CAPACITY_NAME_RE,
}


def _collapse_character_spaced_object_text(objects_text: str) -> str:
    """Normalize object sections like `l o c a t i o n - 1` to `location-1`."""
    replacements = [
        (
            r"c\s*a\s*p\s*a\s*c\s*i\s*t\s*y\s*(?:-\s*|\s+)n\s*u\s*m\s*b\s*e\s*r",
            "capacity-number",
        ),
        (r"l\s*o\s*c\s*a\s*t\s*i\s*o\s*n", "location"),
        (r"p\s*a\s*c\s*k\s*a\s*g\s*e", "package"),
        (r"v\s*e\s*h\s*i\s*c\s*l\s*e", "vehicle"),
        (r"t\s*r\s*u\s*c\s*k", "truck"),
        (r"c\s*a\s*p\s*a\s*c\s*i\s*t\s*y", "capacity"),
    ]
    normalized = objects_text
    for pattern, replacement in replacements:
        normalized = re.sub(pattern, replacement, normalized, flags=re.IGNORECASE)
    normalized = re.sub(r"(?<=\d)\s+(?=\d)", "", normalized)
    return normalized


def _extract_object_names_for_type(names_text: str, obj_type: str) -> list[str]:
    pattern = _NAME_PATTERNS_BY_TYPE[obj_type]
    names = []
    for m in pattern.finditer(names_text):
        names.append(_canon_symbol(m.group(0)))
    return names


def _parse_typed_objects(objects_text: str):
    objects_text = _collapse_character_spaced_object_text(objects_text)
    matches = list(_TYPE_MARKER_RE.finditer(objects_text))
    if not matches:
        raise ValueError("Malformed :objects section.")

    object_decls = []
    cursor = 0

    for m in matches:
        names_text = objects_text[cursor:m.start()]
        obj_type = _canon_symbol(m.group("type"))
        if obj_type not in _VALID_TRANSPORT_TYPES:
            raise ValueError("Malformed :objects section.")

        names = _extract_object_names_for_type(names_text, obj_type)
        if not names:
            raise ValueError("Malformed :objects section.")

        for name in names:
            object_decls.append((name, obj_type))

        cursor = m.end()

    trailing = objects_text[cursor:].strip()
    if trailing:
        raise ValueError("Malformed :objects section: trailing names without type.")

    return object_decls


def extract_transport_problem_structure(pddl_text: str) -> dict:
    objects_text = _extract_section_body(pddl_text, "objects")
    init_text = _extract_section_body(pddl_text, "init")
    goal_text = _extract_section_body(pddl_text, "goal")

    object_decls = _parse_typed_objects(objects_text)

    init_facts = []
    for m in _PREDICATE_RE.finditer(init_text):
        pred = m.group(1)
        args = [_canon_symbol(x) for x in _norm_space(m.group(2)).split()]
        init_facts.append(tuple([pred] + args))

    for m in _ROAD_LENGTH_RE.finditer(init_text):
        init_facts.append(
            (
                "road-length",
                _canon_symbol(m.group(1)),
                _canon_symbol(m.group(2)),
                m.group(3).strip(),
            )
        )

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
    gt = extract_transport_problem_structure(gt_pddl_text)
    llm = extract_transport_problem_structure(llm_pddl_text)

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
        description="Parser-only summary for problem_file_gen_qwen2_5_32b_instruct_kani_python_unraveling Transport outputs"
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
    category_problem_ids = {
        "objects_missing": [],
        "objects_extra": [],
        "init_missing": [],
        "init_extra": [],
        "goal_missing": [],
        "goal_extra": [],
        "perfect_match": [],
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
            category_problem_ids["objects_missing"].append(pid)
        if diff["objects_extra_in_llm"]:
            counts["objects_extra"] += 1
            category_problem_ids["objects_extra"].append(pid)
        if diff["init_missing_in_llm"]:
            counts["init_missing"] += 1
            category_problem_ids["init_missing"].append(pid)
        if diff["init_extra_in_llm"]:
            counts["init_extra"] += 1
            category_problem_ids["init_extra"].append(pid)
        if diff["goal_missing_in_llm"]:
            counts["goal_missing"] += 1
            category_problem_ids["goal_missing"].append(pid)
        if diff["goal_extra_in_llm"]:
            counts["goal_extra"] += 1
            category_problem_ids["goal_extra"].append(pid)
        if diff["perfect_match"]:
            counts["perfect_match"] += 1
            category_problem_ids["perfect_match"].append(pid)

    total = len(problem_ids)

    def problem_suffix(category: str) -> str:
        pids = category_problem_ids[category]
        if not pids:
            return ""
        return f" (problems: {', '.join(pids)})"

    print()
    print("Transport Qwen2.5/Kani parser summary")
    print(f"- requested problems: {len(problem_ids)}")
    print(f"- processed problems: {counts['processed']}")
    print(f"- skipped problems:   {counts['skipped']}")
    print()
    print("Percent of requested problems with each mismatch type:")
    print(f"- missing objects: {pct(counts['objects_missing'], total)}%{problem_suffix('objects_missing')}")
    print(f"- extra objects:   {pct(counts['objects_extra'], total)}%{problem_suffix('objects_extra')}")
    print(f"- missing init:    {pct(counts['init_missing'], total)}%{problem_suffix('init_missing')}")
    print(f"- extra init:      {pct(counts['init_extra'], total)}%{problem_suffix('init_extra')}")
    print(f"- missing goal:    {pct(counts['goal_missing'], total)}%{problem_suffix('goal_missing')}")
    print(f"- extra goal:      {pct(counts['goal_extra'], total)}%{problem_suffix('goal_extra')}")
    print(f"- perfect match:   {pct(counts['perfect_match'], total)}%{problem_suffix('perfect_match')}")


if __name__ == "__main__":
    main()
