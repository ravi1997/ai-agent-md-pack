# Evidence Checklist: Nginx 502/504 (Collect before guessing)

Collect the smallest set of evidence that answers: **is upstream reachable and healthy?**

## A) Nginx
- `nginx -t`
- Nginx error log lines around the failure (10-30 lines)
- Site config: upstream/proxy_pass target + timeouts
- Whether TLS termination / load balancer is involved

## B) Upstream (Gunicorn/Uvicorn/Flask)
- Service/container status (systemd or docker)
- Upstream logs around failure
- Worker boot errors (import error, missing env, permission denied)
- Socket mismatch (unix socket path vs config) OR port mismatch

## C) Host/resource signals
- CPU/RAM pressure (OOM kills?)
- Disk full?
- File permission issues (socket, logs, static)

## D) Quick discriminators
- 502 immediately → upstream not listening / crash / socket mismatch
- 504 after delay → timeout mismatch, long request, blocking IO, DB slow, worker starvation

## Required output
- Evidence summary
- One most likely cause + backup causes
- Minimal fix + verify steps
