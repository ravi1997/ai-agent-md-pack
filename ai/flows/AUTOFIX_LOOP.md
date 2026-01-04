# Autofix Loop (when agent is allowed to patch)

1. Create branch `fix/<id>-<slug>`
2. Add reproduction steps and/or failing test
3. Apply minimal patch
4. Run: format → lint → tests
5. Self-review (security + style)
6. Commit with clear message
7. Produce PR summary + rollback notes
