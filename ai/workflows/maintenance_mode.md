# Workflow: Maintenance Mode (One-command friendly)

## Goal
Enable/disable maintenance mode across multiple apps with minimal manual steps.

## Option A — Nginx-only (recommended)
Pattern: switch a single include file or symlink.

### Enable
- Create `maintenance_on.conf` that returns 503 with a friendly HTML page
- Nginx site includes `include /etc/nginx/maintenance/maintenance_on.conf;` conditionally
- Reload nginx

### Disable
- Remove/swap include to `maintenance_off.conf`
- Reload nginx

## Option B — App-level flag
- Env var `MAINTENANCE=1`
- Flask middleware returns maintenance page for non-admin routes
- React shows banner based on `/api/status`

## Option C — Combined
Use Option A for hard block, Option B for graceful messaging.

## Artifacts
- Update runbook: **artifacts/runbook_template.md**
- Add maintenance page template if needed
