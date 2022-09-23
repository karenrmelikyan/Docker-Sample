FROM php:7.2-fpm
# Create and set up php.ini

#RUN cp /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini \
# && sed -i -e 's/max_execution_time = 30/max_execution_time = 3600/' /usr/local/etc/php/php.ini \
# && sed -i -e 's/memory_limit = 128M/memory_limit = 512M/' /usr/local/etc/php/php.ini \
# && sed -i -e 's/post_max_size = 8M/post_max_size = 64M/' /usr/local/etc/php/php.ini \
# && sed -i -e 's/upload_max_filesize = 2M/upload_max_filesize = 64M/' /usr/local/etc/php/php.ini \

RUN docker-php-ext-install pdo_mysql
EXPOSE 80




