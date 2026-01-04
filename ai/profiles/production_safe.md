# Profile: Production-Safe

Use this profile when environment is production.

Rules:
- No code edits applied directly to production.
- No destructive commands.
- Only:
  - analysis
  - safe diagnostics
  - PR creation steps
  - rollback planning
  - alerting and incident documentation

Always produce:
- an incident report draft (`ai/artifacts/incident_report.md`)
- a runbook update suggestion (`ai/artifacts/runbook_template.md`)
