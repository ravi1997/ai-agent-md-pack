# Quickstart (30 seconds)

1) **Copy** the `ai/` folder into your repo root.

2) **Fill once**:
- `ai/01_PROJECT_CONTEXT.md`

3) Start with the entrypoint:
- Open `ai/00_INDEX.md`
- Use the first matching router rule (incident / task / performance / deploy)

That’s it. The agent should not ask for deep prompts—only the minimal forms when needed:
- `ai/forms/INCIDENT_MIN.md`
- `ai/forms/FEATURE_MIN.md`
- `ai/forms/DEPLOY_MIN.md`


## Autofill (v4)
- Fill only what you know in `01_PROJECT_CONTEXT.md` → `AUTO_CONTEXT` block.
- Leave blanks. Agents must infer defaults via `autofill/PATH_AND_SERVICE_INFERENCE.md`.
