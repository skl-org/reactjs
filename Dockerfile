FROM nginx:1.20-alpine

COPY ./build /usr/share/nginx/html

WORKDIR /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf

ENTRYPOINT [ "nginx", "-g", "daemon off;" ]