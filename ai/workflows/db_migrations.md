# Workflow: DB Migrations (Alembic/Flask-Migrate)

## Goals
- keep schema consistent across dev/staging/prod
- avoid data loss
- provide rollback plan

## Detect
- Look for `alembic.ini`, `migrations/`, `Flask-Migrate`, `SQLAlchemy`
- Identify migration tool and current head revision

## Standard flow
1. Snapshot current state (backup in staging/prod)
2. Generate migration:
   - `flask db migrate -m "<msg>"` or `alembic revision --autogenerate`
3. Review migration file manually:
   - ensure no unintended drop/alter
   - add data migrations carefully
4. Apply:
   - `flask db upgrade` / `alembic upgrade head`
5. Verify:
   - app starts, key queries work
   - run tests
6. Rollback plan:
   - `flask db downgrade -1` or to previous revision
   - restore backup if needed

## Output
- Migration commands
- Reviewed migration diff notes
- Rollback instructions
