FROM nginx
COPY public /usr/share/nginx/html
EXPOSE 80 443 8080 8000