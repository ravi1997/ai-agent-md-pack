# Project Context (Fill Once Per Repo)

Fill the placeholders (keep it short). The agent should work even if you leave some blank.

## App
- App name: <APP_NAME>
- Type: <flask-jinja-tailwind | flask-api-react>
- Python package/module: <e.g., yourapp>
- Entry point: <e.g., wsgi:app or app:create_app()>
- Primary DB: <postgres|sqlite|mongo>
- Auth: <none|session|jwt|oauth>
- Domain(s): <example.com, api.example.com>
- Environments: <dev|staging|production>

## Runtime
- Web server: <gunicorn|uvicorn|waitress>
- Reverse proxy: <nginx|caddy|none>
- Process manager: <docker|systemd|both>
- Logs location: <journalctl|/var/log/...|docker logs>

## CI/CD
- CI: <github actions|gitlab ci|none>
- Deploy: <manual|ansible|compose|k8s>
- Branching: <main/master + feature branches>
- Issue tracker: <github|gitlab|jira>

## Safety constraints
- Production write actions: BLOCKED (yes)
- PHI-safe logging: ENABLED (yes)

## Shortcuts
- Dev compose file: <docker-compose.yml>
- Prod compose file: <docker-compose.prod.yml>
- Nginx conf: <nginx/nginx.conf>
- systemd unit(s): <service name(s) if any>
