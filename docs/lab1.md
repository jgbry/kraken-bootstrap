# Lab 1 — Conteneurisation

- Cache : `COPY requirements.txt` + `pip install` avant `COPY . .` → modifier `app/main.py` laisse `pip install` en **CACHED**.
- Taille : `python:3.12` + `COPY . .` naïf → **2.01 GB** (`naif`) ; `python:3.12-slim` + `.dockerignore` (`.git`, `.venv`, …) → **612 MB** (`latest`, ~136 Mo en `inspect`).
- Sécurité / config : `USER appuser` (uid 1000, pas root) ; `ENV OUTPUT_DIR=output` surchargeable via `-e` + volume (`/out`).
