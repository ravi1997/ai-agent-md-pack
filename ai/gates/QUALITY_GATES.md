# Quality Gates (Must Pass Before Commit/PR)

## Before committing
- `ruff check .`
- `ruff format .`
- `pytest -q` (or targeted subset)
- No secrets in diff (scan env, tokens, credentials)

## Before opening PR
- Updated docs/runbook if operational change
- Added/updated tests
- Clear reproduction + verification steps

## Before closing incident
- Incident summary (what happened)
- Root cause
- Fix + tests
- Prevent recurrence (monitoring / alerts / guardrails)
