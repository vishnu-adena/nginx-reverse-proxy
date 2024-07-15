#!/bin/sh

# Substitute environment variables in the Nginx configuration template
envsubst '${NGINX_PORT} ${SERVER_NAME} ${FRONTEND_HOST} ${BACKEND_HOST} ${BACKEND_PORT}' < /etc/nginx/templates/nginx.conf.template > /etc/nginx/nginx.conf

# Start Nginx
nginx -g 'daemon off;'
