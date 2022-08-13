all: build run
build:
	docker build -t webserver .

run:
	docker compose kill
	docker compose up -d
