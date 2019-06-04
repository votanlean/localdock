FROM php:7.3-fpm-alpine

ADD /.docker/php/php.ini $PHP_INI_DIR/php.ini

RUN apk add --update zlib-dev libzip-dev $PHPIZE_DEPS
RUN docker-php-ext-install zip pdo_mysql

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN mkdir -p /var/www
WORKDIR /var/www

EXPOSE 8000
