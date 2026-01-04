# Repo Layout Contract: Flask + Jinja + Tailwind

## Required directories
- `app/` or `src/` containing Flask package
- `tests/` pytest tests
- `nginx/` reverse proxy config (if used)
- `scripts/` operational scripts

## Required endpoints
- `/healthz` (basic)
- `/readyz` (dependencies ok)
- `/metrics` (optional but recommended)

## Logging rules
- Request ID everywhere
- PHI/PII-safe redaction
- No full request bodies by default
