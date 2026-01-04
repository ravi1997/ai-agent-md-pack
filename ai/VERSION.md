# AI Agent MD Pack — Version

- Current: **v4**
- Date: 2026-01-04
- Theme: **Project Autofill Defaults & Inference**

## What's new in v4
- Structured context block in `01_PROJECT_CONTEXT.md` for reliable parsing/autofill.
- Autofill rules & heuristics for common Flask + Nginx + Docker + systemd layouts.
- Standard variable dictionary (`CONTEXT_SCHEMA.md`) so agents stop asking repeat questions.
- Path/service/port inference playbook + fallback behavior (prod-safe by default).
- Quick routing updates to use inferred defaults when forms are blank.
