# Workflow: Deploy & Migrate

Inputs: `forms/DEPLOY_MIN.md`

## Steps (dev/staging)
1) Pre-check
- tests pass, lint pass
- migrations reviewed

2) Deploy
- build image / restart service
- watch logs for boot errors

3) Migrate (if needed)
- backup (as applicable)
- run migration
- verify schema/head

4) Verify
- smoke test endpoints
- confirm metrics

## Steps (production)
Follow `policy/PRODUCTION_POLICY.md`:
- Provide exact commands and rollout plan for human execution
- Include rollback steps and monitoring points
