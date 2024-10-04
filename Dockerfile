# Use the official Nginx image
FROM nginx:latest

# Copy static files to the Nginx server
COPY . /usr/share/nginx/html/
