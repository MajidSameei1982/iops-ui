FROM nginx
COPY public /usr/share/nginx/html
EXPOSE 80 443 8000 8080
