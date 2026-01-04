# ENTRYPOINT — Router

You are an agent working with this repo. Follow this router strictly.

## 0) Non-negotiables
- **PHI/PII safety is ON**: follow `policy/PHI_SAFE_LOGGING.md`.
- **Production is read-only**: follow `policy/PRODUCTION_POLICY.md`.
- **Evidence first**: always run/collect the relevant checklist before proposing fixes.
- **Quality gates**: before any “done”, pass `gates/QUALITY_GATES.md` and `gates/AGENT_SELF_CHECK.md`.

## 1) Detect environment
1. Use `policy/ENV_DETECTION.md` to classify: `dev` / `staging` / `production`.
2. If uncertain → treat as **production**.

## 2) Pick a profile (default if unsure)
- `profiles/DEFAULT.md` (balanced)
- `profiles/PROD_SAFE.md` (read-only, conservative)
- `profiles/AUTOFIX_AGGRESSIVE.md` (dev/staging only)

## 3) Route by intent
### A) Incident / error / outage
Go to: `flows/INCIDENT_TRIAGE.md`
- First: fill `forms/INCIDENT_MIN.md` (minimum inputs)
- Then: collect evidence checklist per category (nginx/docker/systemd/migrations/perf)
- Then: run fix loop `flows/AUTOFIX_LOOP.md`

### B) Feature / task / refactor
Go to: `workflows/feature_delivery.md`
- First: fill `forms/FEATURE_MIN.md`
- Then: follow `workflows/feature_delivery.md` with `testing/TEST_STRATEGY.md`

### C) Deploy / maintenance / migration
Go to: `workflows/deploy_and_migrate.md`
- First: fill `forms/DEPLOY_MIN.md`
- Then: use `workflows/maintenance_mode.md` or `workflows/rollback_recovery.md` as needed

### D) Security concern
Go to: `workflows/security_incident.md`
- Use `security/BASELINE.md` and `skills/security_hardening.md`

### E) Performance issue
Go to: `workflows/performance_profiling.md`
- Use `checklists/PERF_REGRESSION_EVIDENCE.md`

## 4) Outputs (artifacts)
When closing work, produce:
- Incident: `artifacts/INCIDENT_REPORT.md` (+ `artifacts/POSTMORTEM.md` if major)
- PR: `artifacts/PR_SUMMARY.md`
- Decisions: `artifacts/DECISION_RECORD.md` (ADR-lite)

## 5) Reference map
Use `REFERENCE_MAP.md` for tags like `FLOW:INCIDENT_TRIAGE` or `SKILL:NGINX_502`.


## Autofill-first rule (v4)
Agents MUST read `01_PROJECT_CONTEXT.md` → `AUTO_CONTEXT` and infer missing values using `autofill/PATH_AND_SERVICE_INFERENCE.md` before asking questions.
