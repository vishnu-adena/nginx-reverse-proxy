# Use the official NGINX image from the Docker Hub
FROM nginx:alpine

# Install envsubst
RUN apk add --no-cache gettext

# Copy the NGINX configuration template
COPY nginx.template.conf /etc/nginx/nginx.template.conf

# Copy a script to substitute environment variables and start NGINX
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Expose port 80
EXPOSE 8080

CMD ["/start.sh"]
