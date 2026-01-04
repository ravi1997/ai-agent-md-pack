# Workflow: Rollback & Recovery

> Production: recommend steps, do not execute.

## 1) Identify last known good
- last successful deploy commit/tag
- last good docker image digest
- last good migration revision

## 2) Rollback strategies
### Code rollback (git)
- revert commits vs reset to tag
- create hotfix branch if needed

### Docker rollback
- pin image digest
- redeploy previous compose

### Config rollback
- restore nginx/service unit from backups
- reload vs restart order

### DB rollback
- prefer forward-fix over downgrade when unsure
- if downgrade: ensure safe, tested, with backup

## 3) Recovery order
1) DB reachable
2) Cache/queue
3) App workers
4) Proxy (nginx)
5) Background workers

## 4) Verification
- health endpoints
- smoke tests
- key workflows

Outputs:
- `artifacts/DECISION_RECORD.md` (why rollback method chosen)
