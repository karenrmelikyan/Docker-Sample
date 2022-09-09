# from ready image named php (pulled before)
# create new image with apache server
FROM php:7.4-apache

# copy project from current dir (where locates Dockerfile)
# to apache dir /var/www/html
COPY . /var/www/html

# appoint same dir as an apache working dir.
WORKDIR /var/www/html

# appoint port for nested applications as 80 (for example)
EXPOSE 80

# 1. to build a new image from Dockerfile: docker build -t my-php-apache . (this naming of the new image and pointing current dir)
# after running will be created a new image
# 2. docker run -p 8001:80 -d php-apache (-p 8001:80 mean port 8001 for external listening and 80 for internal)
# after running will be created container with listening port 8001