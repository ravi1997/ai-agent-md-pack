# AI Pack Entry Point

Use this file as the **single front door**. When a user gives *any* input, follow this routing.

## 0) Always load context (no questions unless required)
1. Read **01_PROJECT_CONTEXT.md** (fill gaps with sensible defaults).
2. Read **profiles/default.md**.
3. If `ENV=production`, switch to **profiles/production_safe.md** and apply **policy/PRODUCTION_POLICY.md**.

## 1) Route the request
Choose the first match:

### A) Incident / Error / "something broke"
Go to: **flows/INCIDENT_TRIAGE.md**
- If nginx/gateway errors → **workflows/nginx_502_504.md** + **checklists/NGINX_502_EVIDENCE.md**
- If docker build/run loops → **workflows/docker_dev_loop.md**
- If systemd failures → **skills/systemd.md** + **workflows/debug_basic.md**
- If DB/migrations → **workflows/db_migrations.md**
- If security suspicion → **workflows/security.md** + **artifacts/security_checklist.md**

### B) Feature / Task / Change request
Go to: **workflows/feature_delivery.md**
- Use **forms/FEATURE_MIN.md** if requirements are unclear.
- Produce: **artifacts/pr_summary.md** and update runbook if needed.

### C) Performance / Slowness / High CPU/RAM
Go to: **workflows/performance.md** + **skills/sentry_obs.md**
- Collect metrics + traces; propose minimal fixes.

### D) Maintenance mode / planned downtime
Go to: **workflows/maintenance_mode.md**
- Produce: **artifacts/runbook_template.md**.

### E) General “how do I…”
Use the most relevant **skills/** file and end with a runnable checklist.

## 2) Output rules (min-input, max-action)
- Prefer **one compact set** of steps over many branches.
- When ambiguous, ask at most **one** question, then proceed with best assumptions.
- Always end with **next command to run** (or exact file changes) and a verification step.

## 3) Mandatory safety
- PHI/PII-safe by default (see **skills/logging_redaction.md**).
- No destructive commands unless explicitly requested and confirmed.
- Production is read-only for changes (see **policy/PRODUCTION_POLICY.md**).
