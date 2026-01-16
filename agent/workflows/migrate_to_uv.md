---
description: Migrate an existing Python project to use uv for package management
---

# Workflow: Migrate to `uv`

**Purpose**: Replace `pip`/`poetry`/`pipenv` with `uv` (Fast Python package installer).
**Trigger**: User request "setup" or "migrate to uv".

## Prerequisites

- Python 3.8+
- Existing project with `requirements.txt`, `Pipfile`, or `pyproject.toml`.

## Step 1: Install `uv`

// turbo

1. Install `uv` if not present.

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
# Or ensure it's in PATH
export PATH="$HOME/.cargo/bin:$PATH"
```

## Step 2: Initialize & Import

Detect the current format and migrate.

### Scenario A: `requirements.txt`

1. Initialize `uv` project.

   ```bash
   uv init
   ```

2. Add dependencies from requirements.

   ```bash
   uv add -r requirements.txt
   ```

3. (Optional) Remove old file.

   ```bash
   rm requirements.txt
   ```

### Scenario B: `Pipfile` (Pipenv)

1. Generate requirements from Pipfile.

   ```bash
   pipenv requirements > requirements.txt
   ```

2. Initialize and Add.

   ```bash
   uv init
   uv add -r requirements.txt
   ```

3. Cleanup.

   ```bash
   rm Pipfile Pipfile.lock requirements.txt
   ```

### Scenario C: `poetry` (`pyproject.toml`)

1. `uv` can often read standard `pyproject.toml`. Try syncing first.

   ```bash
   uv sync
   ```

2. If that fails, re-add dependencies manually to migrate the `[tool.poetry]` section to standard `[project]`.

## Step 3: Verify Installation

1. Sync dependencies.

   ```bash
   uv sync
   ```

2. Run tests.

   ```bash
   uv run pytest
   ```

## Step 4: Infrastructure Update

1. **Dockerfile**: Update to `uv` based build.
   - Ref: `agent/snippets/python/Dockerfile.uv.md`
2. **CI**: Update GitHub Actions to install `uv`.

   ```yaml
   - uses: astral-sh/setup-uv@v1
   - run: uv sync
   ```

## Step 5: Lock File

Commit the new lock file.

```bash
git add pyproject.toml uv.lock
git commit -m "chore: migrate to uv package manager"
```
