# SKILL: Docker / Compose

Patterns:
- Use named volumes for DB
- Keep build context small (.dockerignore)
- Separate dev vs prod compose profiles
- Diagnose rebuild loops by watching file watchers and volume mounts

Evidence checklist:
- `checklists/DOCKER_BUILD_FAIL_EVIDENCE.md`
