# Checklist: Migration Failure Evidence

- Migration tool (Alembic/Flask-Migrate/etc.)
- Command used + full output
- DB URL *masked* (host/db name ok, secrets masked)
- Current revision/head info
- Failing migration file names
- DB errors (constraint, lock, timeout)
- If prod: stop and follow `policy/PRODUCTION_POLICY.md`

Output:
- safe next steps (read-only in prod)
- rollback options (if any)
