# Workflow: Security Incident / Suspicious Traffic

## 1) Contain
- rate limit (nginx)
- enable maintenance mode if under attack
- preserve logs (do not rotate away evidence)

## 2) Evidence
- request samples (masked)
- source IPs, paths, user agents
- app logs around suspicious requests
- WAF/nginx logs

## 3) Fix
- patch validation/sanitization
- tighten allowlists
- add nginx rules cautiously

## 4) Verify
- add tests for bypass attempts
- run basic security checks

References:
- `security/BASELINE.md`
- `skills/security_hardening.md`

Artifacts:
- `artifacts/INCIDENT_REPORT.md`
