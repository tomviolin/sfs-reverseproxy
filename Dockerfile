FROM nginx
RUN apt update
RUN apt install vsftpd -y

#COPY ./nginx/nginx.conf /etc/nginx/conf.d/default.conf
COPY ./html /usr/share/nginx/html
ENV TZ=America/Chicago
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

