# Checklist: Docker Build/Run Failure Evidence

## Build failures
- Full failing command (compose/build)
- Last 50 lines of build output
- Base image + tag
- `Dockerfile` relevant section

## Run failures
- `docker ps` and status
- `docker logs <container> --tail 200`
- Exit code / restart loop
- Mounted volumes & permissions issues
- Port conflicts (`ss -lntp | grep <port>`)

## Repro notes
- Clean build? (`--no-cache` only if needed)
- Changes since last good build

## Output
Write: likely failure class + next 3 commands to confirm.
