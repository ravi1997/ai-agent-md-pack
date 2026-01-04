# Agent Self-Check (reduce hallucinations)

Before responding, confirm:

1) Did I classify ENV correctly using `policy/ENV_DETECTION.md`?
2) If production/uncertain: did I avoid write actions?
3) Did I collect the mandatory evidence checklist for this category?
4) Are my claims tied to evidence (logs/config/output) rather than guesses?
5) Did I avoid PHI/PII and redact secrets?
6) Did I provide a rollback or containment plan when risk exists?
7) Did I suggest the smallest safe change first?
8) Did I produce the required artifacts?

If any answer is “no”, fix that first.
