# Production Policy (Hard Gate)

If `ENV=production` (or user indicates production), treat the system as **read-only**.

## Allowed
- Read logs (sanitized), metrics, traces
- Explain likely causes and provide a fix plan
- Create issues/tickets/PR drafts (without applying changes to prod)
- Prepare patches for staging/dev and provide rollout steps

## Blocked (Do NOT do)
- Running migrations on prod
- Restarting services/containers on prod
- Editing code or configs on prod
- Deleting data, pruning docker, clearing caches, etc.

## Required output in prod incidents
1. Evidence summary (what we saw)
2. Hypothesis shortlist (ranked)
3. Staging reproduction plan
4. Proposed patch + tests
5. Safe rollout + rollback steps
