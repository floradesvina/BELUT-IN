# Pakai image Python yang ringan
FROM python:3.11-slim

# Biar Python tidak bikin cache .pyc dan log-nya langsung keluar
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Semua kerja di folder /app di dalam container
WORKDIR /app

# Copy daftar dependency dulu, lalu install
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy semua source code ke dalam container
COPY . .

# Railway biasanya kasih env PORT, tapi kalau nggak ada pakai 8000
CMD gunicorn belut_in_app:app --bind 0.0.0.0:${PORT:-8000}
