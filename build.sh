#!/usr/bin/env bash
set -o errexit

pip install -r requirements.txt

python ecommerce/manage.py collectstatic --no-input
python ecommerce/manage.py migrate
