#!/bin/bash
set -o errexit

# 1. Instalar dependencias del sistema para Playwright
apt-get update && apt-get install -y \
    libwoff1 \
    libopus0 \
    libwebp6 \
    libwebpdemux2 \
    libenchant1c2a \
    libgudev-1.0-0 \
    libsecret-1-0 \
    libhyphen0 \
    libgdk-pixbuf2.0-0 \
    libegl1 \
    libnotify4 \
    libxslt1.1 \
    libevent-2.1-7 \
    libgles2 \
    libvpx5 \
    python3-pip  # Asegurar que pip esté disponible

# 2. Instalar dependencias de Python
pip install --upgrade pip && pip install -r requirements.txt

# 3. Instalar Chromium con Playwright
python -m playwright install --with-deps chromium