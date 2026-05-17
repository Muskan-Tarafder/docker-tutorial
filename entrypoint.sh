#!/bin/sh

python manage.py makemigrations
python manage.py migrate
gunicorn _core.wsgi:application --bind 0.0.0.0:8000