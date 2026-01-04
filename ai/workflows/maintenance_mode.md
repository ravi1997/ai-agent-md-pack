# Workflow: Maintenance Mode (one-command patterns)

Choose one based on your setup.

## Option 1 — Nginx-only (fastest)
- Serve a static maintenance page
- Keep upstream untouched

Pattern:
1) Add an `include` switch in nginx server block:
   - `include /etc/nginx/snippets/maintenance.conf;`
2) maintenance.conf either:
   - `return 503;` with `error_page 503 /maintenance.html;`
3) Enable/disable by swapping a symlink:
   - `ln -sf /etc/nginx/snippets/maintenance_on.conf /etc/nginx/snippets/maintenance.conf`
   - `nginx -t && systemctl reload nginx`

## Option 2 — App-level flag
- Env var `MAINTENANCE=1`
- Flask middleware returns banner/503 for most routes
- Leave health checks working

## Option 3 — Both (recommended for outages)
- Nginx serves static page
- App still reachable for admin/health

Artifacts:
- record entry/exit times in `artifacts/INCIDENT_REPORT.md`
