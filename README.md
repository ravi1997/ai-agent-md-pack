# AI Agent Template Pack (Markdown-Only)

This pack is a **drop-in set of Markdown configuration files** intended for agentic IDEs / copilots and “AI developer” workflows.
It is designed so you can start a new Flask + Tailwind or Flask API + React project and **get deep, consistent AI help without writing long prompts**.

## How to use
1. Copy this folder into any repo as:
   - `./ai/`  (recommended)  
   or keep it centrally and symlink it into projects.
2. In your IDE/agent, set the **system / project instructions** to:
   - `ai/00_SYSTEM.md` (primary)
   - plus `ai/01_PROJECT_CONTEXT.md` (fill a few placeholders)
3. When you want an action, use the short commands described in:
   - `ai/10_COMMANDS.md`

## What this pack covers
- Debugging + auto-fix loops (reproduce → test → fix → verify → commit)
- Nginx 502/504, systemd, Docker, gunicorn, logs, timeouts
- Database migrations + rollback safety
- Security checks (SQLi, path traversal, secrets)
- Performance profiling and regression prevention
- Feature development (spec → tasks → PR)
- PHI/PII-safe logging and redaction defaults (medical-safe)
- Artifact templates: incident report, PR summary, postmortem, runbooks, checklists

## Date
Generated: 2026-01-04 (Asia/Kolkata)

---
If your agent supports “profiles”, use:
- **Default**: `ai/profiles/default.md`
- **Production-safe**: `ai/profiles/production_safe.md`
- **Aggressive auto-fix**: `ai/profiles/aggressive_autofix.md`
