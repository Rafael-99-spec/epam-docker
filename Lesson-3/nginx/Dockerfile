FROM alpine:latest
apk add openrc --no-cache
RUN apk add nginx
#RUN mkdir -p /run/nginx
#RUN touch /run/nginx/nginx.pid
RUN adduser -D -g 'www' www
RUN mkdir /www 
RUN chown -R www:www /var/lib/nginx
RUN chown -R www:www /www
COPY nginx.conf /etc/nginx/nginx.conf
COPY www.host.conf.j2 /etc/nginx/conf.d
COPY index.html /www
#RUN rc-update add nginx default
CMD ["/etc/init.d/nginx start"]
