#!/usr/bin/env bash
set -o errexit

echo "=====> Installing requirements..."
pip install -r requirements.txt

echo "=====> Changing to ecommerce directory..."
cd ecommerce

echo "=====> Collecting static files..."
python manage.py collectstatic --no-input

echo "=====> Running migrations..."
python manage.py migrate --noinput

echo "=====> Build complete!"
