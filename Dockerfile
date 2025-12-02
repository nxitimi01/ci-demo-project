FROM python:3.11-slim

# Arbeitsverzeichnis im Container
WORKDIR /app

# Dependencies installieren
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Code kopieren
COPY app ./app

# Standard-Kommando beim Start des Containers
CMD ["python", "-m", "app"]
