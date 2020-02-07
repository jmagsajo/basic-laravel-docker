FROM php:7.2-fpm-alpine

RUN docker-php-ext-install pdo pdo_mysql

RUN mkdir /var/www/html/storage

RUN chown -R www-data:www-data /var/www/html
RUN chmod -R 755 /var/www/html/storage

WORKDIR /var/www/html