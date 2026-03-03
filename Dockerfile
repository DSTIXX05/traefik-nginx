FROM nginx:alpine

# Copy custom nginx configuration
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

# Copy website files
COPY website/ /usr/share/nginx/html/

# Expose port 80 (Traefik will handle 443)
EXPOSE 80

# Use default nginx entrypoint
CMD ["nginx", "-g", "daemon off;"]
