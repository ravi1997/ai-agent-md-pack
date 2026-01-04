# Checklist: Nginx 502/504 Evidence (mandatory)

Collect before proposing fixes.

## A) Nginx config sanity
- `nginx -t` output
- Relevant server block / upstream snippet
- Proxy timeouts: `proxy_connect_timeout`, `proxy_read_timeout`

## B) Error logs (copy 20–50 lines around failure)
- `/var/log/nginx/error.log`
- access log line for the failing request (masked)

## C) Upstream health
If systemd:
- `systemctl status <service>`
- `journalctl -u <service> -n 200 --no-pager`

If docker:
- `docker ps`
- `docker logs <container> --tail 200`

## D) Gunicorn/UWSGI specifics
- bind address matches nginx upstream (socket vs 127.0.0.1:8000)
- workers booting? any import errors?
- timeouts: gunicorn `--timeout` vs nginx proxy timeouts

## E) Resource checks
- `free -h`
- `df -h`
- `top` / `htop` snapshot
- OOM kill in dmesg: `dmesg | tail`

## F) Common root causes to confirm/deny
- Upstream crashed on import (missing env var, missing dependency)
- Wrong socket path/permissions
- Timeout mismatch (long request)
- Worker count too low / deadlock
- Reverse proxy headers causing huge bodies

## Output
Summarize in 10 lines: what evidence points to.
