 FROM drupal:8.6.15-apache

#copy files to www folder.
RUN rm -rf /var/www/html/*
COPY ./src /var/www/html
COPY ./docker/php.ini /usr/local/etc/php/conf.d/
COPY ./docker/opcache-recommended.ini /usr/local/etc/php/conf.d/
