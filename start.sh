#!/bin/bash

# Jalankan app Flask pakai Gunicorn
python -m gunicorn belut_in_app:app --bind 0.0.0.0:${PORT:-8000}
