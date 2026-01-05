# Project Context (fill once)

## AUTO_CONTEXT (fill once — agents will infer missing values)
Copy/paste and edit. Leave unknowns blank.

```yaml
app_name: ""
env: "staging"           # dev|staging|production
domain: ""
repo_root: "."
backend_dir: ""          # backend|app|server|.
frontend_dir: ""         # frontend|client|ui|none
python_package: ""
entrypoint: ""           # wsgi:app | app:app | yourapp.wsgi:app
listen_host: "0.0.0.0"
app_port: 8000
nginx_port: 80
health_path: "/healthz"

compose_file: "docker-compose.yml"
compose_project: ""
compose_backend_service: ""
compose_frontend_service: ""
compose_nginx_service: ""

systemd_unit: ""
systemd_user: ""
systemd_workdir: ""

nginx_access_log: ""
nginx_error_log: ""
app_log: ""              # file path or "journald"

db_kind: ""              # sqlite|postgres|mysql|mongo
db_url_env: "DATABASE_URL"
migration_tool: ""       # alembic|flask-migrate|none

test_cmd: "pytest -q"
lint_cmd: "ruff check . && ruff format ."
```

### Autofill behavior
- If a value is blank, agents MUST infer it using `autofill/PATH_AND_SERVICE_INFERENCE.md`.
- If env is unclear, treat as `production` (read-only safety).

> Keep this short. The goal is to prevent the agent from asking deep questions.

### Example filled AUTO_CONTEXT

```yaml
app_name: "eye-donation-app"
env: "dev"
domain: "localhost:8000"
repo_root: "."
backend_dir: "."
frontend_dir: "none"
python_package: "app"
entrypoint: "wsgi:app"
listen_host: "0.0.0.0"
app_port: 8000
nginx_port: 80
health_path: "/healthz"

compose_file: "docker-compose.yml"
compose_project: "eye-donation"
compose_backend_service: "web"
compose_frontend_service: ""
compose_nginx_service: "nginx"

systemd_unit: "eye-donation.service"
systemd_user: "www-data"
systemd_workdir: "/opt/eye-donation"

nginx_access_log: "/var/log/nginx/access.log"
nginx_error_log: "/var/log/nginx/error.log"
app_log: "journald"

db_kind: "postgres"
db_url_env: "DATABASE_URL"
migration_tool: "alembic"

test_cmd: "pytest -q"
lint_cmd: "ruff check . && ruff format ."
```

### Validation Checklist

Before using, verify:
- ✅ `app_name` is filled (required)
- ✅ `env` is set correctly (dev/staging/production)
- ✅ `repo_root` points to correct directory
- ✅ If using Docker: `compose_backend_service` is correct
- ✅ If using systemd: `systemd_unit` matches actual service name
- ✅ Database settings match your actual setup



## Identity
- Project name:
- Repo URL (GitHub/GitLab):
- Primary language/runtime: (Python/Node/etc.)
- Framework: (Flask / FastAPI / React / Vite / Tailwind / etc.)

## Environments
- Dev URL:
- Staging URL:
- Production URL:

## Run & deploy
- Local run command:
- Docker compose files:
- systemd services (if any):
- Reverse proxy: (nginx/apache) + config path:
- WSGI server: (gunicorn/uwsgi) + config:

## Data
- DB type(s): (Postgres/MySQL/SQLite/Mongo/etc.)
- Migration tool: (Alembic/Flask-Migrate/etc.)
- Redis/Queue: (Celery/RQ/etc.)

## Tests & quality
- Test runner: (pytest)
- Lint/format: (ruff/black/prettier/eslint)
- CI: (GitHub Actions/GitLab CI)

## Sensitive/PHI notes
- PHI present? (yes/no) — default yes
- Any endpoints needing extra masking:

## Agent permissions
- Dev/staging can auto-fix and commit? (yes)
- Production write actions blocked? (yes)