# Image dasar Python
FROM python:3.11-slim

# Matikan buffering output Python
ENV PYTHONUNBUFFERED=1

# Folder kerja di dalam container
WORKDIR /app

# Copy requirements dari folder extensions ke /app
COPY extensions/requirements.txt ./requirements.txt

# Install semua dependency
RUN pip install --no-cache-dir -r requirements.txt

# Copy semua source code dari folder extensions ke /app
COPY extensions/. .

# Jalankan app pakai gunicorn
CMD gunicorn belut_in_app:app --bind 0.0.0.0:${PORT:-8000}
