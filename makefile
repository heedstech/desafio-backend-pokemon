#!make
include .env
export $(shell sed 's/=.*//' .env)

start-dev:
	docker-compose up -d

start:
	docker-compose up

start-prod:
	docker-compose -f docker-compose.production.yml -f docker-compose.yml up -d

start-staging:
	docker-compose -f docker-compose.staging.yml -f docker-compose.yml up -d

stop:
	docker-compose down

ssh-nginx:
	docker exec -it nginx_server bash

ssh-backend:
	docker exec -it backend bash

ssh-frontend:
	docker exec -it frontend bash

ssh-db:
	docker exec -it db bash

psql:
	docker exec -it db psql -U "$(SQL_USER)" -P "$(SQL_PASSWORD)"

build-prod:
	docker-compose -f docker-compose.production.yml build

build-staging:
	docker-compose -f docker-compose.staging.yml build

build-dev:
	docker-compose build

pytest:
	docker-compose -f docker-compose.test.yml run backend pytest --nomigrations --reuse-db

coverage:
	docker-compose -f docker-compose.test.yml run backend pytest --cov=./

django-shell:
	docker-compose run backend python manage.py shell
