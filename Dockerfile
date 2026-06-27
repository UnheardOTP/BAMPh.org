# Use the lightweight Nginx Alpine image
FROM nginx:alpine

# Copy the static website files to the default Nginx public directory
# We rename index.htm to index.html to follow standard web server conventions
COPY index.htm /usr/share/nginx/html/index.html
COPY sammyl.png /usr/share/nginx/html/sammyl.png
COPY bitch.mp3 /usr/share/nginx/html/bitch.mp3

# Expose port 80
EXPOSE 80

# Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
