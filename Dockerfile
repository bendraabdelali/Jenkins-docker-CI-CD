FROM nginx:1.23.1
WORKDIR /usr/share/nginx/html
COPY index.html .
EXPOSE 80
# CMD ["nginx", "-g", "daemon off;"]
