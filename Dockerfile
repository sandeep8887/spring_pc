# Use the official NGINX image as the base
FROM nginx:alpine

# Dummy label for identification
LABEL maintainer="sandeep@gmail.com"
LABEL purpose="ECR push test"

COPY html/index.html /usr/share/nginx/html/

# Optionally add a basic index.html (not required)
#RUN echo "ECR Push Test - NGINX" > /usr/share/nginx/html/index.html

# Expose the default NGINX port
EXPOSE 80
