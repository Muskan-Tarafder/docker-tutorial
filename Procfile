web: python manage.py migrate && gunicorn _core.wsgi:application
worker: celery -A _core worker -l info -c 2
