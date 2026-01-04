# Workflow: Feature Delivery (tasks → code → tests → PR)

Inputs: `forms/FEATURE_MIN.md`

## 1) Spec
- Translate acceptance criteria into:
  - API contract (if any)
  - UI behavior (if any)
  - data model changes
- Record design in `artifacts/DECISION_RECORD.md` if non-trivial

## 2) Implementation plan (small steps)
- keep commits small and reviewable

## 3) Tests
Use `testing/TEST_STRATEGY.md`:
- add unit + request-level tests
- add integration tests if DB involved

## 4) Quality gates
- ruff/format
- pytest
- security baseline quick pass (if relevant)

## 5) PR artifact
- `artifacts/PR_SUMMARY.md`
