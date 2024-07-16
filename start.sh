#!/bin/sh

# Substitute environment variables in the NGINX configuration template
envsubst '\$FRONTEND_URL \$API_GATEWAY_URL \$EUREKA_URL' < /etc/nginx/nginx.template.conf > /etc/nginx/nginx.conf

# Output the final NGINX configuration for debugging
echo "NGINX Configuration:"
cat /etc/nginx/nginx.conf

# Output the resolved IP addresses for debugging
echo "Resolved IP addresses:"
nslookup ui.adenavishnu.live
nslookup edukan-api-gateway-production.up.railway.app
nslookup edukan-service-register-production.up.railway.app

# Start NGINX
nginx -g 'daemon off;'
