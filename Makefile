all: build run
build:
	docker build -t webserver .

run:
	docker kill web || echo ""
	docker rm web || echo ""
	docker run -d --name web --restart always -p 80:80 -v /tmp/roarcalendars:/usr/share/nginx/html/roarcalendars webserver

