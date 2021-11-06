FROM nginx:1.20-alpine

COPY ./build /usr/share/nginx/html

WORKDIR /usr/share/nginx/html

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY ./env.sh .
COPY .env .

RUN apk add --no-cache bash
RUN chmod +x env.sh


CMD ["/bin/bash", "-c", "/usr/share/nginx/html/env.sh && nginx -g \"daemon off;\""]