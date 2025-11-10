# Use the official lightweight Nginx image
FROM nginx:latest

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Remove default Nginx static files
RUN rm -rf ./*

# Copy all your website files (HTML, CSS, JS, images, etc.)
COPY . .

# Expose port 80 for web traffic
EXPOSE 80

# Start Nginx in the foreground (so the container stays alive)
CMD ["nginx", "-g", "daemon off;"]
 