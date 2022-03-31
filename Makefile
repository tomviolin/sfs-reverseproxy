all: build run
build:
	docker build -t webserver .

run:
	docker kill web || echo ""
	docker rm web || echo ""
	docker run -d --name web --restart always -p 80:80 \
		-p 21:21 \
		-p 20:20 \
		-v /tmp/roarcalendars:/usr/share/nginx/html/roarcalendars \
		-v /home/tomh/microservices/waples_mining/waples_mining_www:/usr/share/nginx/html/waples_mining \
		-v /opt/webcam:/usr/share/nginx/html/webcam \
		webserver

