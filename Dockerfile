FROM nginx

EXPOSE 80

COPY /.output/public /usr/share/nginx/html

ENTRYPOINT nginx -g "daemon off;"
