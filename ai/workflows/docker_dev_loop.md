# Workflow: Docker Dev Loop (Rebuilds/Watchers Triggering Repeatedly)

## Symptom
- container rebuilds continuously
- watch triggers on build artifacts
- CPU pegged by file watchers

## Fix strategy
1. Identify watcher tool (watchfiles, nodemon, vite, celery reload, etc.)
2. Ensure build output dirs are excluded:
   - Python: ignore `build/`, `.pytest_cache`, `__pycache__`, `.mypy_cache`
   - Node: ignore `node_modules/`, `dist/`, `.vite/`
3. For bind mounts:
   - mount only source dirs, not build outputs
4. For docker compose:
   - use named volumes for build dirs to avoid host triggers
5. For Vite/React:
   - set `server.watch.ignored` patterns
6. For Python reload:
   - configure watchfiles exclude patterns
7. Validate: modify a source file triggers exactly one rebuild

## Output
- Updated compose mounts and watcher config
- Verification steps
