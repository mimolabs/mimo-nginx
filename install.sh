#!/bin/bash

sed -i -e "s/HOSTNAME/${MIMO_DOMAIN}/g" /tmp/mimo-api.conf
sed -i -e "s/HOSTNAME/${MIMO_DOMAIN}/g" /tmp/mimo-dashboard.conf

mkdir /etc/nginx/sites-enabled/

# mv /tmp/mimo-api.conf /etc/nginx/sites-enabled/api.conf
mv /tmp/mimo-dashboard.conf /etc/nginx/sites-enabled/dashboard.conf
# mv /tmp/letsencrypt.conf /etc/nginx/sites-enabled/letsencrypt.conf
mv /tmp/nginx.conf /etc/nginx/nginx.conf
