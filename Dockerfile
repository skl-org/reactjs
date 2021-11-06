FROM nginx:1.20-alpine
COPY ./build /usr/share/nginx/html
WORKDIR /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
CMD ["/bin/sh", "-c", "sed -i 's/listen  .*/listen '\"$PORT\"';/g' /etc/nginx/conf.d/default.conf && exec nginx -g 'daemon off;'"]
