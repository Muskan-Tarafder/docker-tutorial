#!/bin/sh

python manage.py makemigrations
python manage.py migrate
PORT="${PORT:-8000}"
gunicorn _core.wsgi:application --bind 0.0.0.0:$PORT