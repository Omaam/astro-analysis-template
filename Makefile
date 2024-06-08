all: build up

rerun: down build up python heasoft jupyterlab

build:
	docker compose build

up:
	docker compose up -d

down:
	docker compose down

logs:
	docker compose logs -f

heasoft:
	docker compose exec heasoft /bin/bash

python:
	docker compose exec python /bin/bash

jupyterlab:
	docker compose exec jupyterlab /bin/bash
