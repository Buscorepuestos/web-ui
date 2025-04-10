#!/bin/bash
set -o errexit

# 1. Instalar dependencias del sistema (sin root)
apt-get update -y && apt-get install -y \
    libnss3 \
    libatk1.0-0 \
    libgtk-3-0 \
    libxdamage1 \
    libgbm1 \
    libasound2 \
    --no-install-recommends

# 2. Instalar dependencias de Python
pip install --upgrade pip
pip install -r requirements.txt

# 3. Instalar Chromium como usuario normal
export PLAYWRIGHT_BROWSERS_PATH=$HOME/.ms-playwright
python -m playwright install --with-deps chromium