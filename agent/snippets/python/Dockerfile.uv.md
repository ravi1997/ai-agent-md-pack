# Snippet: Python Dockerfile (uv based)

```dockerfile
# Use a Python image with uv pre-installed
FROM ghcr.io/astral-sh/uv:python3.11-bookworm-slim AS builder

WORKDIR /app

# Enable bytecode compilation
ENV UV_COMPILE_BYTECODE=1

# Copy uv dependency definition files
# uv uses pyproject.toml and uv.lock
COPY pyproject.toml uv.lock ./

# Install dependencies into a virtual environment
# --frozen ensures we stick to the lockfile
RUN uv sync --frozen --no-dev --no-install-project

# Runtime Stage
FROM python:3.11-slim-bookworm

WORKDIR /app

# Copy the virtual environment from the builder stage
COPY --from=builder /app/.venv /app/.venv

# Add the venv to PATH
ENV PATH="/app/.venv/bin:$PATH"

# Copy application code
COPY . .

# Run application
CMD ["python", "app.py"]
```

## Note on Compilation
If you need C-extensions (gcc), use the non-slim base image for the builder stage:
`FROM ghcr.io/astral-sh/uv:python3.11-bookworm AS builder`
