#!/bin/bash

python -m gunicorn belut_in_app:app --bind 0.0.0.0:${PORT:-8000}
