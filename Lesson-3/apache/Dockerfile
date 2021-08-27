FROM alpine:latest
RUN apk add apache2 openrc net-tools lynx --no-cache
COPY httpd.conf /etc/apache2/httpd.conf
RUN rc-update add apache2 default
EXPOSE 8082
CMD ["-D","FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd"]
