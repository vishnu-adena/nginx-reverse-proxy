# Use the official Nginx image as a base
FROM nginx:alpine

# Copy the custom Nginx configuration file to the appropriate directory
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
