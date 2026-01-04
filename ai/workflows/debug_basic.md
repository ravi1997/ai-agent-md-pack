# Workflow: Debug Basic (Reproduce → Fix → Verify)

## Inputs (minimal)
- traceback OR log snippet OR failing behavior
- environment (dev/staging/prod) if known

## Steps
1. **Classify**
   - crash vs wrong output vs performance vs deployment failure
2. **Locate**
   - identify failing module, function, line
   - find recent change area (if available)
3. **Reproduce**
   - write/extend minimal reproduction (unit test preferred)
   - if no tests: create `tests/test_regression_<slug>.py`
4. **Fix**
   - smallest change to address root cause
   - add guardrails (input validation, None checks, timeouts)
5. **Verify**
   - run `pytest -q`
   - run `ruff format .` and `ruff check --fix .`
6. **Document**
   - PR summary using `ai/artifacts/pr_summary.md`
   - if incident-impacting: `ai/artifacts/incident_report.md`

## Output format
- Root cause (1–3 bullets)
- Patch (file blocks or diff)
- Verification commands
- Rollback plan
