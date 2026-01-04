# Project Bootstrap Contract (Template Standardization)

## Choose template type
- Flask + Jinja + Tailwind → follow **contracts/REPO_LAYOUT_FLASK.md**
- Flask API + React (Vite) → follow **contracts/REPO_LAYOUT_FLASK_REACT.md**

## Must-have defaults
- Health endpoints: `/healthz`, `/readyz`
- PHI-safe request logging: see **skills/logging_redaction.md**
- Lint/test: ruff + pytest
- Nginx/Gunicorn recommended for prod: see **skills/nginx_gunicorn.md**

## “No deep prompts” rule
Any time requirements are unclear:
- Use **forms/FEATURE_MIN.md** or **forms/INCIDENT_MIN.md**
Ask at most **one** question, then proceed with assumptions.

## Close the loop
Every change must end with:
- How to verify
- What to monitor
- Rollback steps (if operational)
