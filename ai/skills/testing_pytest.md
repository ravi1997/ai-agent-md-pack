# Skill: pytest

## Minimal structure
- `tests/`
- `pytest.ini` (optional)
- Flask: use app factory + test client fixture

## Regression test recipe
1. Write failing test reproducing bug
2. Run `pytest -q` to confirm fail
3. Fix bug
4. Run again to confirm pass
