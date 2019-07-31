FROM nginx:alpine

COPY etc/conf.d/reverse_proxy /etc/nginx/conf.d/default.conf
COPY auth/htpasswd /etc/nginx/conf.d/.htpasswd
COPY entrypoint.sh /usr/local/bin

RUN apk --no-cache update \
    && apk add apache2-utils
    

ENTRYPOINT [ "entrypoint.sh" ]
