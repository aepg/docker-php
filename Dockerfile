FROM php:7.2-apache

RUN mv "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini"


RUN set -ex; \
      docker-php-ext-install mysqli pdo_mysql json;
