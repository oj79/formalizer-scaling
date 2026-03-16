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
NL_DESC_DIR = DATA_DIR / "descriptions"
MODEL_OUTPUT_ROOT = PROJECT_ROOT / "output" / "direct_pddl" / "qwen2_5_32b_instruct_kani_retry3"


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


def _split_statements(section_text: str) -> list[str]:
    text = section_text.replace(", and ", ", ")
    parts = [_norm_space(p) for p in text.split(",")]
    return [p for p in parts if p]


def parse_nl_problem_description(nl_text: str) -> dict:
    text = _norm_space(nl_text)

    init_prefix = "As initial conditions I have that, "
    goal_prefix = "My goal is to have that "

    if init_prefix not in text or goal_prefix not in text:
        raise ValueError("Unexpected NL format: missing initial/goal prefixes.")

    init_start = text.index(init_prefix) + len(init_prefix)
    goal_start = text.index(goal_prefix)

    init_text = text[init_start:goal_start].strip()
    goal_text = text[goal_start + len(goal_prefix):].strip()

    init_statements = _split_statements(init_text)
    goal_statements = _split_statements(goal_text)

    init_facts = []
    goal_facts = []
    block_ids = set()

    re_clear = re.compile(r"^block (\d+) is clear\.$|^block (\d+) is clear$")
    re_on = re.compile(r"^block (\d+) is on top of block (\d+)\.$|^block (\d+) is on top of block (\d+)$")
    re_table = re.compile(r"^block (\d+) is on the table\.$|^block (\d+) is on the table$")
    re_hand = re.compile(r"^the hand is empty\.$|^the hand is empty$")

    def parse_stmt(stmt: str, in_goal: bool):
        st = stmt.strip()

        m = re_clear.match(st)
        if m:
            b = int(m.group(1) or m.group(2))
            block_ids.add(b)
            return ("clear", f"block{b}")

        m = re_on.match(st)
        if m:
            b1 = int(m.group(1) or m.group(3))
            b2 = int(m.group(2) or m.group(4))
            block_ids.update([b1, b2])
            return ("on", f"block{b1}", f"block{b2}")

        m = re_table.match(st)
        if m:
            b = int(m.group(1) or m.group(2))
            block_ids.add(b)
            return ("on-table", f"block{b}")

        m = re_hand.match(st)
        if m:
            if in_goal:
                raise ValueError("Unexpected 'the hand is empty' in goal section.")
            return ("arm-empty",)

        raise ValueError(f"Unrecognized statement: {st}")

    for s in init_statements:
        init_facts.append(parse_stmt(s, in_goal=False))

    for s in goal_statements:
        goal_facts.append(parse_stmt(s, in_goal=True))

    if not block_ids:
        raise ValueError("No block ids parsed from NL problem description.")

    n_blocks = max(block_ids)
    objects = [f"block{i}" for i in range(1, n_blocks + 1)]

    return {
        "objects": objects,
        "init_facts_ordered": init_facts,
        "goal_facts_ordered": goal_facts,
        "n_blocks": n_blocks,
    }


def render_problem_pddl(problem_id: str, parsed: dict) -> str:
    lines = []
    lines.append(f"(define (problem blocksworld-{problem_id})")
    lines.append("  (:domain blocksworld)")
    lines.append(f"  (:objects {' '.join(parsed['objects'])} )")
    lines.append("  (:init ")

    for fact in parsed["init_facts_ordered"]:
        if fact[0] == "clear":
            lines.append(f"    (clear {fact[1]})")
        elif fact[0] == "on":
            lines.append(f"    (on {fact[1]} {fact[2]})")
        elif fact[0] == "on-table":
            lines.append(f"    (on-table {fact[1]})")
        elif fact[0] == "arm-empty":
            lines.append("    (arm-empty)")
        else:
            raise ValueError(f"Unknown init fact: {fact}")

    lines.append("  )")
    lines.append("  (:goal (and ")

    for fact in parsed["goal_facts_ordered"]:
        if fact[0] == "clear":
            lines.append(f"    (clear {fact[1]})")
        elif fact[0] == "on":
            lines.append(f"    (on {fact[1]} {fact[2]})")
        elif fact[0] == "on-table":
            lines.append(f"    (on-table {fact[1]})")
        elif fact[0] == "arm-empty":
            lines.append("    (arm-empty)")
        else:
            raise ValueError(f"Unknown goal fact: {fact}")

    lines.append("  ))")
    lines.append(")")
    return "\n".join(lines) + "\n"


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


def diff_fact_sections(parsed_pddl_text: str, llm_pddl_text: str) -> dict:
    parsed_secs = extract_section_facts_from_pddl(parsed_pddl_text)
    llm_secs = extract_section_facts_from_pddl(llm_pddl_text)

    parsed_init = set(parsed_secs["init_facts"])
    parsed_goal = set(parsed_secs["goal_facts"])
    llm_init = set(llm_secs["init_facts"])
    llm_goal = set(llm_secs["goal_facts"])

    return {
        "init_missing_in_llm": sorted(parsed_init - llm_init),
        "init_extra_in_llm": sorted(llm_init - parsed_init),
        "goal_missing_in_llm": sorted(parsed_goal - llm_goal),
        "goal_extra_in_llm": sorted(llm_goal - parsed_goal),
        "perfect_match": parsed_init == llm_init and parsed_goal == llm_goal,
    }


def pct(count: int, total: int) -> int:
    if total == 0:
        return 0
    return int(round(100.0 * count / total))


def main() -> None:
    parser = argparse.ArgumentParser(description="Parser-only summary for problem_file_gen_qwen2_5_32b_instruct_kani outputs")
    parser.add_argument("--start", type=int, help="Start problem number (inclusive), e.g. 191")
    parser.add_argument("--end", type=int, help="End problem number (inclusive), e.g. 200")
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
    print("NL_DESC_DIR:", NL_DESC_DIR)
    print("MODEL_OUTPUT_ROOT:", MODEL_OUTPUT_ROOT)
    print("Num problems:", total)
    print("First/last:", problem_ids[0], problem_ids[-1])

    for pid in tqdm(problem_ids, desc="Parser diff", unit="problem"):
        nl_path = NL_DESC_DIR / f"{pid}_problem.txt"
        llm_path = MODEL_OUTPUT_ROOT / pid / "cand_00" / "problem.pddl"

        try:
            nl_text = nl_path.read_text()
            llm_text = llm_path.read_text()
            parsed_struct = parse_nl_problem_description(nl_text)
            parsed_pddl_text = render_problem_pddl(pid, parsed_struct)
            diff = diff_fact_sections(parsed_pddl_text, llm_text)
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
