# Stage 1: Build
FROM python:3.11-slim AS builder

WORKDIR /app
COPY app.py .
RUN pip install --no-cache-dir flask

# Stage 2: Final (minimal)
FROM python:3.11-alpine

# Create non-root user
RUN adduser -D appuser

WORKDIR /app
COPY --from=builder /app /app

USER appuser

CMD ["python", "app.py"]