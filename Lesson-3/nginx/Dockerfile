FROM ubuntu:20.04
RUN apt install nginx net-tools lynx -y
COPY virtual.host,conf.j2 /etc/nginx/sites-available
COPY index.html /usr/share/nginx/html
RUN ln -s /etc/nginx/sites-available/virtual.host.conf ./
RUN mkdir /var/www/virtual.host
EXPOSE 8088
CMD ["nginx", "-g", "daemon off;"]
