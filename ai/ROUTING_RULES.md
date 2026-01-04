# Routing Rules (keywords → workflow)

If message contains:
- `502`, `504`, `upstream` → `checklists/NGINX_502_EVIDENCE.md` then `workflows/nginx_502_504.md` (or `skills/nginx_gunicorn.md`)
- `docker build`, `compose`, `no space`, `permission denied` → `checklists/DOCKER_BUILD_FAIL_EVIDENCE.md`
- `systemctl`, `journalctl`, `failed` → `checklists/SYSTEMD_FAIL_EVIDENCE.md`
- `alembic`, `migration`, `revision` → `checklists/MIGRATION_FAIL_EVIDENCE.md`
- `slow`, `timeout`, `latency` → `checklists/PERF_REGRESSION_EVIDENCE.md`
- `sql injection`, `traversal`, `attack` → `workflows/security_incident.md`

If uncertain: go to `flows/INCIDENT_TRIAGE.md`.
