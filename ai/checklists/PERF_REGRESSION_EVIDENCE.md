# Checklist: Performance Regression Evidence

Collect before optimization.

- What metric regressed? (latency/CPU/mem/IO)
- Baseline vs current numbers (with timestamps)
- Endpoint(s) impacted
- Recent changes: code/config/db/index
- Resource snapshots: CPU/mem/disk
- DB slow queries / explain plan (masked)
- Nginx/gunicorn timeouts hit?

Output:
- likely bottleneck layer (app/db/proxy/system)
- 3 minimal experiments to confirm
