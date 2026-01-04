# Copy Into New Repo (Fast Install)

1. Copy the entire `ai/` folder into your repo root.
2. Add to README:
   - "AI instructions live in `ai/00_INDEX.md`"
3. Optional: add git hook or CI step to run **gates/QUALITY_GATES.md** commands.

## Minimal per-project edits
- Fill **01_PROJECT_CONTEXT.md**:
  - App name, envs, stack, deploy method, important URLs
- Choose profile defaults:
  - dev/staging: `profiles/default.md`
  - production: `profiles/production_safe.md`
