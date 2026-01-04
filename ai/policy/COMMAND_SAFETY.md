# Command Safety (Denylist + Safer Alternatives)

Even in dev, avoid catastrophic commands. If a command matches denylist patterns, stop and ask.

## Denylist patterns (non-exhaustive)
- `rm -rf /` or `rm -rf` on root paths
- `mkfs*`, `dd if=... of=/dev/*`
- `:(){ :|:& };:` (fork bomb)
- `shutdown`, `reboot` (unless user explicitly requests)
- `docker system prune -a` on production
- `DROP DATABASE` / destructive SQL on production

## Safer alternatives
- Prefer deleting **specific** folders (`./build`, `./.venv`) not global paths
- Prefer pruning **a single project**: `docker compose down --remove-orphans` then `docker volume rm <project>_*`
- Prefer DB backups before any destructive change:
  - Postgres: `pg_dump ... > backup.sql`
- Prefer staged rollouts with health checks
