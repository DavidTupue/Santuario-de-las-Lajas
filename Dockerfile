FROM php:8.1-apache

RUN docker-php-ext-install pdo pdo_mysql
COPY . /var/www/html/
RUN chown -R www-data:www-data /var/www/html
RUN chmod -R 755 /var/www/html
RUN a2enmod rewrite
EXPOSE  80
