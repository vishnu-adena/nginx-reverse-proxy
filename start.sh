#!/bin/sh

# Substitute environment variables in the NGINX configuration template
envsubst '\$FRONTEND_URL \$API_GATEWAY_URL \$EUREKA_URL' < /etc/nginx/nginx.template.conf > /etc/nginx/nginx.conf

# Display the final configuration for debugging
cat /etc/nginx/nginx.conf

# Start NGINX
nginx -g 'daemon off;'
