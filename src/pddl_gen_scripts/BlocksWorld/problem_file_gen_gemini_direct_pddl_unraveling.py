from __future__ import annotations

import argparse
import os
import re
from pathlib import Path

try:
    from tqdm.auto import tqdm
except Exception:  # pragma: no cover
    def tqdm(iterable, **kwargs):
        return iterable


# Paths match notebook assumptions (run from formalizer-scaling/src/pddl_gen_scripts)
PROJECT_ROOT = Path.cwd().parents[1]
DATA_DIR = PROJECT_ROOT / "data"
PROMPT_PATH = PROJECT_ROOT / "prompts" / "only_pddl_instruction.txt"
DOMAIN_PDDL_PATH = DATA_DIR / "pddl" / "domain.pddl"
DESC_DIR = DATA_DIR / "descriptions_unraveling"
OUTPUT_ROOT = PROJECT_ROOT / "output" / "direct_pddl_direct_unraveling" / "gemini_3_flash"

MODEL_NAME = "gemini-3-flash-preview"


def pid_from_int(i: int) -> str:
    return f"p{i:02d}" if i < 100 else f"p{i}"


def parse_problem_ids(start: int | None, end: int | None, ids: str | None) -> list[str]:
    if ids:
        out = []
        for token in re.split(r"[\s,]+", ids.strip()):
            if not token:
                continue
            if token.startswith("p"):
                out.append(token)
            else:
                out.append(pid_from_int(int(token)))
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
        raise FileNotFoundError(f"Missing domain description: {domain_path}")
    if not problem_path.exists():
        raise FileNotFoundError(f"Missing problem description: {problem_path}")

    return domain_path.read_text(), problem_path.read_text()


def build_prompt(problem_id: str, prompt_prefix: str, domain_pddl_text: str) -> str:
    nl_domain, nl_problem = load_problem_descriptions(problem_id)

    return (
        f"{prompt_prefix}\n\n"
        "You are an expert PDDL engineer.\n"
        "Create a syntactically correct and semantically consistent problem file "
        "using the information below.\n\n"
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
        "- Generate ONLY the final problem PDDL.\n"
        "- Wrap it in exactly one <problem_file>...</problem_file> block.\n"
        "- Do not output any <domain_file> block.\n"
        "- Do not include any extra text before or after <problem_file>...</problem_file>."
    )


def extract_problem_pddl(raw_text: str) -> str:
    if not raw_text:
        return ""
    matches = re.findall(r"<problem_file>(.*?)</problem_file>", raw_text, flags=re.DOTALL | re.IGNORECASE)
    return matches[-1].strip() if matches else ""


def call_gemini(client, prompt: str, temperature: float, max_output_tokens: int, thinking_level: str) -> str:
    response = client.models.generate_content(
        model=MODEL_NAME,
        contents=prompt,
        config={
            "temperature": temperature,
            "max_output_tokens": max_output_tokens,
            "thinking_config": {
                "thinking_level": thinking_level,
            },
        },
    )
    return (response.text or "").strip()


def main() -> None:
    parser = argparse.ArgumentParser(description="Generation-only script from problem_file_gen_gemini_direct_pddl_unraveling.ipynb")
    parser.add_argument("--start", type=int, help="Start problem number (inclusive), e.g. 191")
    parser.add_argument("--end", type=int, help="End problem number (inclusive), e.g. 200")
    parser.add_argument("--ids", type=str, help="Comma/space separated IDs, e.g. 'p01,p02,p10' or '1 2 10'")
    parser.add_argument("--temperature", type=float, default=0.4)
    parser.add_argument("--max-output-tokens", type=int, default=220000)
    parser.add_argument("--thinking-level", type=str, default="medium", choices=["minimal", "low", "medium", "high"])
    parser.add_argument("--dry-run", action="store_true", help="Validate IDs/inputs only; no API calls or file writes")
    args = parser.parse_args()

    problem_ids = parse_problem_ids(args.start, args.end, args.ids)

    prompt_prefix = PROMPT_PATH.read_text()
    domain_pddl_text = DOMAIN_PDDL_PATH.read_text()
    OUTPUT_ROOT.mkdir(parents=True, exist_ok=True)

    print("PROJECT_ROOT:", PROJECT_ROOT)
    print("OUTPUT_ROOT:", OUTPUT_ROOT)
    print("Num problems:", len(problem_ids))
    print("First/last:", problem_ids[0], problem_ids[-1])
    print("Dry run:", args.dry_run)

    if args.dry_run:
        failures = []
        for pid in tqdm(problem_ids, desc="Dry-run validation", unit="problem"):
            try:
                _ = build_prompt(pid, prompt_prefix, domain_pddl_text)
            except Exception as e:
                failures.append((pid, str(e)))

        print("\nGeneration done! (dry-run, no files written)")
        if failures:
            print("Failed IDs:", ", ".join(pid for pid, _ in failures))
            for pid, err in failures:
                print(f"- {pid}: {err}")
        else:
            print("All succeeded.")
        return

    from google import genai
    from dotenv import load_dotenv

    load_dotenv(PROJECT_ROOT / ".env")
    api_key = os.getenv("GOOGLE_API_KEY")
    if not api_key:
        raise ValueError("GOOGLE_API_KEY not found in .env")
    client = genai.Client(api_key=api_key)

    failures = []
    for pid in tqdm(problem_ids, desc="LLM generation", unit="problem"):
        try:
            prompt = build_prompt(pid, prompt_prefix, domain_pddl_text)
            raw_text = call_gemini(client, prompt, args.temperature, args.max_output_tokens, args.thinking_level)
            problem_pddl_text = extract_problem_pddl(raw_text)

            cand_dir = OUTPUT_ROOT / pid / "cand_00"
            cand_dir.mkdir(parents=True, exist_ok=True)

            (cand_dir / "raw.txt").write_text(raw_text or "")
            (cand_dir / "problem.pddl").write_text(problem_pddl_text or "")
            (cand_dir / "domain.pddl").write_text(domain_pddl_text)

            if not problem_pddl_text.strip():
                failures.append((pid, "no <problem_file> block extracted"))
        except Exception as e:
            failures.append((pid, str(e)))

    print("\nGeneration done!")
    if failures:
        print("Failed IDs:", ", ".join(pid for pid, _ in failures))
    else:
        print("All succeeded.")


if __name__ == "__main__":
    main()
