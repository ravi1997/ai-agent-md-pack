# Workflow: systemd Failures (Service Won’t Start / Restart Loop)

## Collect
- `systemctl status <service> -l`
- `journalctl -u <service> -b -n 200 --no-pager`
- Unit file content if available

## Diagnose order
1. ExecStart path wrong / missing venv
2. Missing environment variables (.env not loaded)
3. WorkingDirectory wrong
4. Permissions (user/group) and file access
5. Port binding or socket issues
6. Dependency services not ready (db, redis)
7. Restart policy too aggressive hides root cause

## Fix patterns
- Add `EnvironmentFile=/path/to/.env`
- Use absolute paths
- Add `WorkingDirectory=...`
- Add `ExecStartPre` readiness checks (db reachable)
- Tune `Restart=on-failure`, `RestartSec=3`

## Output
- Patched unit file
- commands: daemon-reload, restart, status
- rollback steps
