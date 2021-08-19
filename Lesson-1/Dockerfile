FROM ubuntu:21.04
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install wget -y
RUN apt-get install curl -y
RUN apt-get install openssl -y
RUN apt-get install apt-transport-https -y
RUN apt-get clean -y
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
EXPOSE 80 443
CMD [ "nginx" ]

