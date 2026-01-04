# Skill: Nginx + Gunicorn

## Must-align settings
- Nginx `proxy_read_timeout` >= Gunicorn `--timeout` >= longest endpoint time
- Keepalive settings consistent
- Client body size if uploads

## 502 patterns
- upstream down
- socket permissions
- wrong upstream address
- worker crash (OOM/import error)

## 504 patterns
- timeouts
- slow DB query
- deadlock / blocking call

## Recommended defaults (starting point)
- Nginx: `proxy_read_timeout 120s; proxy_connect_timeout 10s;`
- Gunicorn: `--timeout 120 --graceful-timeout 30 --workers <cpu*2+1>`
