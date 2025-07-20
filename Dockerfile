# Use nginx base image
FROM nginx:alpine

# Copy all files into nginx public html folder
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
