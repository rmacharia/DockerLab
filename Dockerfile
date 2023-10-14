FROM php:8.0-apache

RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN a2enmod rewrite
RUN mkdir /var/www/html/log
RUN mkdir /var/www/tmp

RUN echo "DirectoryIndex index.php" >> /etc/apache2/apache2.conf

RUN chown -R www-data:www-data /var/www/tmp && chmod -R 777 /var/www/tmp
RUN chown -R www-data:www-data /var/www/html/log && chmod -R 777 /var/www/html/log

RUN chown -R www-data:www-data /var/www/html 


COPY custom-vhost.conf /etc/apache2/sites-available/000-default.conf

COPY . /var/www/html/
COPY ./sql.sql/ /docker-entrypoint-initdb.d/


EXPOSE 3000