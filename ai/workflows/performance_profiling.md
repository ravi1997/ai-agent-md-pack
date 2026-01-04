# Workflow: Performance Profiling

Inputs: treat as incident or use PERF checklist.

## 1) Evidence
Use: `checklists/PERF_REGRESSION_EVIDENCE.md`

## 2) Identify bottleneck layer
- proxy timeouts?
- app CPU?
- DB slow queries?
- IO saturation?

## 3) Minimal experiments
- add timing logs (PHI-safe)
- profile hot endpoints
- EXPLAIN plans
- caching opportunities

## 4) Fix + regression tests
- optimize with guardrails
- add benchmarks if possible

Artifact:
- `artifacts/DECISION_RECORD.md`
