# Use an official Nginx image as the base
FROM nginx:alpine

# Install envsubst for environment variable substitution
RUN apk add --no-cache gettext

# Copy custom Nginx template configuration file
COPY nginx.template.conf /etc/nginx/nginx.template.conf

# Copy the script to substitute environment variables and start Nginx
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Expose port 80
EXPOSE 80

# Start Nginx with the substituted configuration file
CMD ["/start.sh"]
