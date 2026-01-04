# Incident Triage Flow (Min-input, Max-action)

## Goal
Turn a vague symptom into a verified fix with tests and an artifact trail.

## Step 1 — Minimal intake
If key info is missing, use **forms/INCIDENT_MIN.md** but ask at most **one** question.

## Step 2 — Stabilize and classify
Classify into one bucket:
- Gateway: nginx 502/504
- App crash/exception
- DB/migrations
- Infra: systemd/docker
- Performance
- Security

## Step 3 — Collect evidence (fast)
- Get logs (sanitized)
- Identify last known good
- Check health endpoints
- Confirm environment (prod/staging/dev)

## Step 4 — Hypothesis shortlist (ranked)
Produce 3 hypotheses max. Each must have:
- Supporting evidence
- A quick test to confirm/deny

## Step 5 — Fix loop
1. Reproduce in staging/dev
2. Write failing test (preferred)
3. Implement smallest fix
4. Run quality gates (**gates/QUALITY_GATES.md**)
5. Produce PR summary (**artifacts/pr_summary.md**)

## Step 6 — Closeout
- Create/Update runbook
- Postmortem if severity high (**artifacts/postmortem.md**)
