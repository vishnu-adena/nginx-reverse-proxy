FROM nginx:alpine

# Copy the template configuration file
COPY nginx.conf.template /etc/nginx/templates/nginx.conf.template

# Install envsubst for variable substitution
RUN apk --no-cache add gettext

# Copy the script to substitute variables and start Nginx
COPY start-nginx.sh /usr/local/bin/start-nginx.sh
RUN chmod +x /usr/local/bin/start-nginx.sh

ENTRYPOINT ["/usr/local/bin/start-nginx.sh"]
