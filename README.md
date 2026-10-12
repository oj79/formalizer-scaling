# Language Models as Higher-Order Planning Formalizers

Codebase for PDDL problem generation and LLM-as-planner, LLM-as-formalizer, and LLM-as-higher-order formalizeer experiments over BlocksWorld and three IPC-derived unraveling domains: Elevators, Transport, and ChildSnack.

## 1) Dependencies

Use Python 3.10+; Python 3.12 is supported.

```bash
python -m pip install -U \
  google-genai \
  python-dotenv \
  tqdm \
  requests \
  jupyterlab \
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

## 2) API Keys

Create `.env` at the repository root:

```bash
GOOGLE_API_KEY=your_google_key
DEEPSEEK_API_KEY=your_deepseek_key
OPENROUTER_API_KEY=your_openrouter_key
```

Use the keys required by the workflows you run:

- Gemini workflows use `GOOGLE_API_KEY`.
- DeepSeek v4 Flash workflows use `DEEPSEEK_API_KEY` with the DeepSeek API endpoint.
- Qwen3 OpenRouter workflows use `OPENROUTER_API_KEY`.
- Qwen2.5 Kani workflows run through local Hugging Face/Kani model loading and do not require an LLM API key.

## 3) VAL

VAL is used for plan validation and for PDDL/plan checking steps inside some notebooks. The standalone BlocksWorld VAL scripts expect:

```bash
~/tools/VAL/build/linux64/Release/bin/Validate
```

If this binary is unavailable, generation can still run, but validation cells/scripts will fail or report the missing executable.

## 4) Repository Layout

```text
data/
  descriptions/                    # BlocksWorld standard natural-language descriptions
  pddl/                            # BlocksWorld standard ground-truth PDDL
  descriptions_unraveling/         # BlocksWorld unraveling natural-language descriptions
  pddl_unraveling/                 # BlocksWorld unraveling ground-truth PDDL
  descriptions_unraveling_domain/  # Elevators, Transport, ChildSnack descriptions
  pddl_unraveling_domain/          # Elevators, Transport, ChildSnack ground-truth PDDL

prompts/
  BlocksWorld/
  Elevators/
  Transport/
  ChildSnack/

src/pddl_gen_notebooks/            # PDDL-generation notebooks
src/pddl_gen_scripts/              # PDDL-generation scripts and parser/checker scripts
src/planner_gen_notebooks/         # Planner-generation notebooks
src/planner_gen_scripts/           # BlocksWorld planner scripts and VAL scripts

output/                            # Created by runs; not tracked by git
```

Domain/template folders use these names:

```text
BlocksWorld/
Elevators/bottom_to_top_delivery/
Transport/fully_connected_delivery/
ChildSnack/single_sandwich_line/
```

## 5) PDDL Generation

Run commands from the repository root.

### BlocksWorld

BlocksWorld has both notebooks and standalone scripts. The notebooks are in:

```text
src/pddl_gen_notebooks/BlocksWorld/
```

Standalone generation scripts exist for Gemini and Qwen2.5 Kaniworkflows. Examples:

```bash
python src/pddl_gen_scripts/BlocksWorld/problem_file_gen_gemini.py --start 1 --end 10
```

```bash
python src/pddl_gen_scripts/BlocksWorld/problem_file_gen_gemini_direct_pddl_unraveling.py --start 1 --end 10
```

```bash
python src/pddl_gen_scripts/BlocksWorld/problem_file_gen_gemini_python_unraveling.py --start 1 --end 10
```

```bash
python src/pddl_gen_scripts/BlocksWorld/problem_file_gen_qwen2_5_32b_instruct_kani.py --start 1 --end 10
```

DeepSeek BlocksWorld generation is available as notebooks, with parser/checker scripts for the generated outputs.

Run the matching parser/checker script after generation. Examples:

```bash
python src/pddl_gen_scripts/BlocksWorld/problem_file_gen_gemini_parser.py --start 1 --end 10
```

```bash
python src/pddl_gen_scripts/BlocksWorld/problem_file_gen_deepseek_v4_flash_parser.py --start 1 --end 10
```

### Elevators, Transport, and ChildSnack

For the IPC-derived unraveling domains, run PDDL generation from the notebooks:

```text
src/pddl_gen_notebooks/Elevators/bottom_to_top_delivery/
src/pddl_gen_notebooks/Transport/fully_connected_delivery/
src/pddl_gen_notebooks/ChildSnack/single_sandwich_line/
```

These folders contain notebooks for Gemini, DeepSeek v4 Flash, and Qwen2.5 Kani direct-PDDL/python-generator workflows. After a notebook run, use the corresponding parser/checker script in `src/pddl_gen_scripts/`.

Examples:

```bash
python src/pddl_gen_scripts/Elevators/bottom_to_top_delivery/problem_file_gen_gemini_direct_pddl_unraveling_parser.py --start 1 --end 10
```

```bash
python src/pddl_gen_scripts/Transport/fully_connected_delivery/problem_file_gen_deepseek_v4_flash_python_unraveling_parser.py --start 1 --end 10
```

```bash
python src/pddl_gen_scripts/ChildSnack/single_sandwich_line/problem_file_gen_qwen2_5_32b_instruct_kani_loop_python_unraveling_parser.py --start 1 --end 10
```

Parser/checker scripts also support explicit IDs:

```bash
python src/pddl_gen_scripts/<Domain>/<Template>/<parser_script>.py --ids "p01,p02,p10"
```

## 6) Planner Experiments

### BlocksWorld

BlocksWorld planner notebooks are in:

```text
src/planner_gen_notebooks/BlocksWorld/
```

Standalone planner scripts exist for Gemini and Qwen2.5 Kani:

```bash
python src/planner_gen_scripts/BlocksWorld/llm_planner_gen_gemini.py --start 1 --end 10
```

```bash
python src/planner_gen_scripts/BlocksWorld/llm_planner_gen_gemini_direct_unraveling.py --start 1 --end 10
```

```bash
python src/planner_gen_scripts/BlocksWorld/llm_planner_gen_qwen2_5_32b_instruct_kani.py --start 1 --end 10
```

```bash
python src/planner_gen_scripts/BlocksWorld/llm_planner_gen_qwen2_5_32b_instruct_kani_direct_unraveling.py --start 1 --end 10
```

Run the matching VAL script after plan generation:

```bash
python src/planner_gen_scripts/BlocksWorld/llm_planner_gen_gemini_val.py --start 1 --end 10
```

```bash
python src/planner_gen_scripts/BlocksWorld/llm_planner_gen_gemini_direct_unraveling_val.py --start 1 --end 10
```

```bash
python src/planner_gen_scripts/BlocksWorld/llm_planner_gen_qwen2_5_32b_instruct_kani_val.py --start 1 --end 10
```

```bash
python src/planner_gen_scripts/BlocksWorld/llm_planner_gen_qwen2_5_32b_instruct_kani_direct_unraveling_val.py --start 1 --end 10
```

DeepSeek BlocksWorld planner workflows are available as notebooks.

### Elevators, Transport, and ChildSnack

For the IPC-derived unraveling domains, run planner generation and validation directly in the notebooks:

```text
src/planner_gen_notebooks/Elevators/bottom_to_top_delivery/
src/planner_gen_notebooks/Transport/fully_connected_delivery/
src/planner_gen_notebooks/ChildSnack/single_sandwich_line/
```

Each folder contains Gemini, DeepSeek v4 Flash, and Qwen2.5 Kani planner notebooks.

## 7) Problem Ranges and IDs

Most scripts accept either a numeric range:

```bash
--start 1 --end 10
```

or explicit problem IDs:

```bash
--ids "p01,p02,p10"
```

Some generation scripts also support `--dry-run` to check input paths and problem IDs without making model calls.

## 8) Outputs

Run outputs are written under `output/`, typically organized by workflow, domain, template, model, problem ID, and candidate ID. Common output families include:

```text
output/direct_pddl_unraveling/
output/python_unraveling/
output/llm_planner_direct_unraveling/
```

Parser/checker scripts assume the corresponding model outputs already exist.

## 9) Notes

- Generations should be run in the notebooks.
- Run scripts from the repository root unless a notebook cell specifies otherwise.
- Notebook paths assume the repository layout above.
- Qwen2.5 Kani workflows require local model loading and adequate GPU memory.
- DeepSeek and OpenRouter workflows require network/API access.
- The `output/` directory is ignored by git.
