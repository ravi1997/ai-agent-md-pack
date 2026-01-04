# Quality Gates (must pass before “done”)

## For fixes (dev/staging)
- [ ] Evidence collected (correct checklist)
- [ ] Root cause stated (not just symptoms)
- [ ] Regression test added when feasible
- [ ] `pytest` passes
- [ ] lint/format passes (ruff/black/prettier as applicable)
- [ ] no secrets/PHI logged
- [ ] rollback steps documented if risky
- [ ] PR summary artifact produced

## For production guidance
- [ ] No write actions executed
- [ ] Commands provided are safe and reversible
- [ ] Monitoring points included
- [ ] Incident report artifact produced
