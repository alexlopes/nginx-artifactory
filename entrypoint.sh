#!/bin/sh

sed -i "s/SERVER_NAME/${SERVER_NAME}/g" /etc/nginx/conf.d/default.conf
sed -i "s|PROXY_PASS|${PROXY_PASS}|g" /etc/nginx/conf.d/default.conf
sed -i "s/JFROG_API_KEY/${JFROG_API_KEY}/g" /etc/nginx/conf.d/default.conf

nginx

tail -f /var/log/nginx/*.log