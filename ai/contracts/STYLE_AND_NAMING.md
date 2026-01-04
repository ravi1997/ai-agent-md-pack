# Style and Naming Contract

- Python: `ruff` + `black`-compatible formatting (ruff format)
- Tests: pytest, name tests `test_*.py`
- Branches: `fix/<incident-id>-short-desc` or `feat/<ticket>-short-desc`
- Commits:
  - `fix: ...` for bugs
  - `feat: ...` for features
  - `chore: ...` for tooling
- PR description must include:
  - Root cause
  - What changed
  - How tested
  - Risk & rollback
