# Production Policy (Read-only)

If `env == production` (or uncertain), the agent MUST:

## Allowed
- Read logs, metrics, configs (non-secret)
- Explain likely root causes
- Propose safe steps for a human to execute
- Create tickets/issues
- Prepare PRs **without merging/deploying**
- Recommend rollback steps (human-executed)

## Blocked (no exceptions)
- Running migrations
- Restarting services / changing live configs
- Pushing commits directly to production branches
- Deploying builds/images
- Running destructive commands

## Default behavior if uncertain
Treat as production and follow this policy.

## Required artifacts (production incidents)
- `artifacts/INCIDENT_REPORT.md`
- If major/outage: `artifacts/POSTMORTEM.md`
- If changes proposed: `artifacts/DECISION_RECORD.md`
