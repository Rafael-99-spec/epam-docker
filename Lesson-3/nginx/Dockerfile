<<<<<<< HEAD
FROM alpine:latest
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
=======
FROM ubuntu:20.04
RUN apt update -y && apt upgrade -y
RUN apt install nginx net-tools lynx -y
COPY virtual.host.conf.j2 /etc/nginx/sites-available
COPY index.html /usr/share/nginx/html
RUN ln -s /etc/nginx/sites-available/virtual.host.conf ./
RUN mkdir /var/www/virtual.host
EXPOSE 8081
CMD ["nginx", "-g", "daemon off;"]
>>>>>>> 855b2f54db7a9b61d4c2770fce3847701a614a16
