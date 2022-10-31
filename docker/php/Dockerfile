#FROM php:7.4-fpm
FROM php:8.1.1-fpm

# Copy from php.ini-production and set up php.ini
#RUN cp /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini && \
#  sed -i -e 's/max_execution_time = 30/max_execution_time = 3600/' /usr/local/etc/php/php.ini && \
#  sed -i -e 's/memory_limit = 128M/memory_limit = 512M/' /usr/local/etc/php/php.ini && \
#  sed -i -e 's/post_max_size = 8M/post_max_size = 64M/' /usr/local/etc/php/php.ini && \
#  sed -i -e 's/upload_max_filesize = 2M/upload_max_filesize = 8M/' /usr/local/etc/php/php.ini

# linux installs
RUN apt-get update
RUN apt-get install -y libgmp-dev
RUN apt-get install -y libzip-dev
RUN apt-get install -y zip
RUN apt-get install -y git
RUN apt-get install -y openssl
RUN apt-get install -y curl

# php extensions install
RUN docker-php-ext-install gmp
RUN docker-php-ext-install bcmath
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install zip

# composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

EXPOSE 9000




