#!/bin/sh

# Substitute environment variables in the template configuration file
envsubst < /etc/nginx/nginx.template.conf > /etc/nginx/nginx.conf

# Start Nginx
nginx -g 'daemon off;'
