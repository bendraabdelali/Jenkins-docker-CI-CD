FROM nginx:1.23.2-alpine

WORKDIR /usr/share/nginx/html

COPY ./app/* .

EXPOSE 80
