FROM alpine:latest
RUN apk add openrc --no-cache
RUN apk add nginx
RUN mkdir /www 
COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /www
RUN rc-update add nginx default
CMD ["nginx", "-g", "daemon off;"]
