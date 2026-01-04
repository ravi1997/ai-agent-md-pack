# Workflow: Security — SQLi / Path Traversal / Logging Hardening

## Threats
- SQL injection via query/body params
- Path traversal via file endpoints
- Secret leakage via logs
- SSRF via URL fetch endpoints

## Steps
1. Identify entry points: routes taking raw strings, file paths, SQL-ish filters
2. Apply allowlists:
   - constrain accepted characters and length
   - cap number of params
3. Use parameterized SQL; never string-format SQL.
4. Path traversal:
   - resolve path; ensure it stays under base directory
   - block `..`, absolute paths, symlinks escaping base
5. Logging:
   - redact headers and sensitive fields
   - do not log bodies by default
6. Add tests:
   - injection-like inputs should be rejected (400/403)
7. Add nginx basic protections (optional):
   - limit body size, rate limit sensitive routes

## Output
- Patch (validators, middleware, tests)
- Security checklist artifact: `ai/artifacts/security_checklist.md`
