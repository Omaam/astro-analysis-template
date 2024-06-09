# Makefile for managing Docker Compose services

.PHONY: run rerun build up down logs heasoft python jupyterlab

run: build up

rerun: down build up

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
	docker compose exec python jupyter-lab --ip 0.0.0.0 --allow-root -b localhost
