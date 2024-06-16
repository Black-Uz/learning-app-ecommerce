# Base image
FROM php:7.4-apache

# Installs mysqli extension for PHP
RUN docker-php-ext-install mysqli

# Sets the working directory inside the container
WORKDIR /var/www/html

# Copies application source code to /var/www/html/
COPY . /var/www/html/

# Copy the database initialization script into the container
COPY assets/db-load-script.sql /docker-entrypoint-initdb.d/

# Set environment variables for database connection
ENV DB_HOST=mysql-service
ENV DB_USER=ecomuser
ENV DB_PASSWORD=ecompassword
ENV DB_NAME=ecomdb

# Expose port 80 to allow traffic to the web server
EXPOSE 80