# formalizer-scaling-main

Codebase for PDDL generation and LLM-as-planner experiments across:
- Blocksworld standard data (`data/descriptions`, `data/pddl`)
- Blocksworld unraveling data (`data/descriptions_unraveling`, `data/pddl_unraveling`)

Main runnable scripts are under:
- `src/pddl_gen_scripts/`
- `src/planner_gen_scripts/`

## 1) Required Dependencies (install first)

Use Python 3.10+ (3.12 is fine).

```bash
python -m pip install -U \
  google-genai \
  python-dotenv \
  tqdm \
  requests \
  kani[huggingface]==1.8.0 \
  transformers==4.51.3 \
  tokenizers==0.21.1 \
  accelerate>=0.30.0 \
  huggingface_hub>=0.30.0 \
  sentencepiece \
  safetensors \
  protobuf \
  nest_asyncio
```

If `torch` is missing:

```bash
python -m pip install -U torch
```

### API Keys
Create `.env` at repo root:

```bash
GOOGLE_API_KEY=your_google_key
OPENROUTER_API_KEY=your_openrouter_key
```

### VAL (for `*_val.py` scripts)
VAL scripts expect:

`~/tools/VAL/build/linux64/Release/bin/Validate`

If that binary is missing, generation scripts still run, but VAL scripts will report missing executable.

## 2) Repo Layout

- `data/`: domain/problem NL + PDDL data
- `prompts/`: standalone prompt templates used by scripts
- `src/pddl_gen_notebooks/`, `src/planner_gen_notebooks/`: notebook versions
- `src/pddl_gen_scripts/`, `src/planner_gen_scripts/`: script-lized versions
- `output/` (created during runs): model outputs, generated files, plans, summaries

## 3) Running Scripts

Run from repo root (e.g. `formalizer-scaling-main/`).

### PDDL generation scripts

```bash
python src/pddl_gen_scripts/<script_name>.py --start 1 --end 10
```

Parser pairing script (for matching `*_parser.py`):

```bash
python src/pddl_gen_scripts/<script_name>_parser.py --start 1 --end 10
```

### Planner generation scripts

```bash
python src/planner_gen_scripts/<script_name>.py --start 1 --end 10
```

VAL pairing script (for matching `*_val.py`):

```bash
python src/planner_gen_scripts/<script_name>_val.py --start 1 --end 10
```

### Optional: explicit IDs
Most scripts also support:

```bash
--ids "p01,p02,p10"
```

## 4) Notes

- Scripts are generation-only or checker-only by design (split workflow).
- Paths are resolved from script file location, so CWD is robust if run from repo root.
- Qwen2.5 Kani scripts require adequate GPU memory.
- OpenRouter scripts require stable network/API connectivity.
