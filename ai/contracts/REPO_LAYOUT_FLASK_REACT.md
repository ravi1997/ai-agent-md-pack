# Repo Layout Contract: Flask API + React (Vite)

## Required directories
- `backend/` Flask API
- `frontend/` React Vite
- `nginx/` (optional, recommended for prod)
- `scripts/`

## Build contract
- Frontend builds to a deterministic path (`dist/`)
- Backend serves API under `/api/*`
- CORS and auth handled explicitly

## Required endpoints
- Backend `/healthz`, `/readyz`
- Frontend `/` and `/ai` console route (if enabled)
