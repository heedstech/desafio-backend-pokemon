#!/bin/bash
echo "Waiting for PostgresSQL server..."
while ! nc -z "$SQL_HOST" 5432 ; do
  sleep 0.1
done
echo "PostgresSQL server started"


python manage.py migrate
python manage.py collectstatic --no-input
if [ "$PRODUCTION" = "True" ]; then
    gunicorn config.wsgi:application --bind 0.0.0.0:8000
else
    gunicorn config.wsgi:application --bind 0.0.0.0:8000 --reload
fi
