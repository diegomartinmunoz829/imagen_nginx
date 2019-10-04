FROM ubuntu:18.04
MAINTAINER Martin Muñoz "mmunoz@laborcorporativa.com.ar"
RUN apt-get update
RUN apt-get install -y nginx 
#RUN echo 'Mi primer Dockerfile' > /var/www/html/index.html
VOLUME /var/www/html/
ARG webpage
ADD $webpage /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 80
