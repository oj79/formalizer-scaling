from __future__ import annotations

import argparse
import re
import shutil
import subprocess
from pathlib import Path

try:
    from tqdm.auto import tqdm
except Exception:  # pragma: no cover
    def tqdm(iterable, **kwargs):
        return iterable


# Paths match notebook assumptions. Resolve from this file so invocation CWD does not matter.
PROJECT_ROOT = Path(__file__).resolve().parents[2]
DATA_DIR = PROJECT_ROOT / "data"
PROMPT_PATH = PROJECT_ROOT / "prompts" / "only_pddl_instruction_unraveling.txt"
DOMAIN_PDDL_PATH = DATA_DIR / "pddl" / "domain.pddl"
DESC_DIR = DATA_DIR / "descriptions_unraveling"
OUTPUT_ROOT = PROJECT_ROOT / "output" / "direct_pddl_unraveling" / "gemini_3_flash"

MODEL_NAME = "gemini-3-flash-preview"


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
        "You are an expert PDDL engineer and expert Python engineer.\n"
        "Create an executable Python generator that writes a syntactically and semantically correct "
        "problem file using the information below.\n\n"
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
        "- Generate ONLY an executable Python generator script.\n"
        "- Wrap it in exactly one <generator>...</generator> block.\n"
        "- Inside <generator>...</generator>, output ONLY raw Python source code.\n"
        "- The first non-whitespace character inside <generator> must be a valid Python token (e.g., def/import).\n"
        "- The script must write ONLY the final problem PDDL to 'problem.pddl' in current working directory.\n"
        "- The script MUST derive init/goal facts algorithmically from compact structure, not hardcoded full fact lists.\n"
        "- Required: at least one loop that constructs predicates (e.g., on/on-table/clear) from computed stacks or parsed patterns.\n"
        "- Required: compute object list from inferred block count (do not hardcode all object names manually).\n"
        "- Disallowed: manually listing full init_state/goal_state facts as constants.\n"
        "- Do NOT include Markdown fences (no ```python, no ```).\n"
        "- Do NOT include comments or prose outside Python statements.\n"
        "- Do not output any <domain_file> block.\n"
        "- Do not output any <problem_file> block.\n"
        "- Do not include any extra text before or after <generator>...</generator>."
    )


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


def extract_generator_code(raw_text: str) -> str:
    text = raw_text or ""
    matches = re.findall(r"<generator>(.*?)</generator>", text, flags=re.DOTALL | re.IGNORECASE)
    if not matches:
        return ""

    code = (matches[-1] or "").strip()

    # Strip optional markdown fences if present
    if code.startswith("```"):
        code = re.sub(r"^```(?:python)?\s*", "", code, flags=re.IGNORECASE)
        code = re.sub(r"\s*```$", "", code)

    return code.strip()


def execute_generator_to_problem(generator_code: str, work_dir: Path, timeout_sec: int = 120) -> dict:
    work_dir = Path(work_dir)
    work_dir.mkdir(parents=True, exist_ok=True)

    generator_path = work_dir / "generator.py"
    generator_path.write_text(generator_code or "")

    proc = subprocess.run(
        ["python", str(generator_path)],
        cwd=str(work_dir),
        capture_output=True,
        text=True,
        timeout=timeout_sec,
    )

    problem_path = work_dir / "problem.pddl"
    if not (problem_path.exists() and problem_path.read_text().strip()):
        # Fallback: if generator wrote a differently named PDDL file, copy latest one to problem.pddl
        candidates = [
            p for p in work_dir.rglob("*.pddl")
            if p.name not in {"domain.pddl", "problem.pddl"}
        ]
        if candidates:
            latest = max(candidates, key=lambda p: p.stat().st_mtime)
            shutil.copyfile(latest, problem_path)

    ok = problem_path.exists() and bool(problem_path.read_text().strip())
    return {
        "ok": ok and (proc.returncode == 0),
        "returncode": proc.returncode,
        "stdout": proc.stdout or "",
        "stderr": proc.stderr or "",
        "generator_path": str(generator_path),
        "problem_path": str(problem_path),
    }


def main() -> None:
    parser = argparse.ArgumentParser(description="Generation-only script from problem_file_gen_gemini_python_unraveling.ipynb")
    parser.add_argument("--start", type=int, help="Start problem number (inclusive), e.g. 1")
    parser.add_argument("--end", type=int, help="End problem number (inclusive), e.g. 10")
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
    import os

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
            generator_code = extract_generator_code(raw_text)

            cand_dir = OUTPUT_ROOT / pid / "cand_00"
            cand_dir.mkdir(parents=True, exist_ok=True)

            exec_result = {"ok": False, "stdout": "", "stderr": ""}
            problem_pddl_text = ""

            if generator_code.strip():
                exec_result = execute_generator_to_problem(generator_code, work_dir=cand_dir, timeout_sec=120)
                if (cand_dir / "problem.pddl").exists():
                    problem_pddl_text = (cand_dir / "problem.pddl").read_text()

            (cand_dir / "raw.txt").write_text(raw_text or "")
            (cand_dir / "generator.py").write_text(generator_code or "")
            (cand_dir / "problem.pddl").write_text(problem_pddl_text or "")
            (cand_dir / "domain.pddl").write_text(domain_pddl_text)
            (cand_dir / "generator_exec_stdout.txt").write_text(exec_result.get("stdout", "") or "")
            (cand_dir / "generator_exec_stderr.txt").write_text(exec_result.get("stderr", "") or "")

            ok = bool(generator_code.strip()) and bool(exec_result.get("ok", False)) and bool(problem_pddl_text.strip())
            if not ok:
                failures.append((pid, "generator missing, execution failed, or empty problem.pddl"))
        except Exception as e:
            failures.append((pid, str(e)))

    print("\nGeneration done!")
    if failures:
        print("Failed IDs:", ", ".join(pid for pid, _ in failures))
    else:
        print("All succeeded.")


if __name__ == "__main__":
    main()
