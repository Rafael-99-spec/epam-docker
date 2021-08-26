FROM alpine:latest
RUN apk add apache2 openrc net-tools lynx --no-cache
RUN mkdir /www
COPY httpd.conf /etc/apache2/httpd.conf
COPY index.html /www
RUN rc-update add apache2 default
EXPOSE 8082
CMD []
