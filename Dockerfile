FROM python:3.12-slim
WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

RUN useradd --create-home --uid 1000 appuser
COPY --chown=appuser:appuser . .
RUN chown appuser:appuser /app

USER appuser
CMD ["python", "-m", "app.main"]
