FROM php:7.4-apache

ARG COMPOSER_VERSION=2.0.11
ARG INSTALL_PATH=/usr/local/bin

ENV APACHE_DOCUMENT_ROOT=/var/www/html/public

RUN apt-get update \
  && apt-get install -y git neovim unzip

RUN curl -sS https://getcomposer.org/installer | php -- --version=$COMPOSER_VERSION --install-dir=$INSTALL_PATH --filename=composer \
  && curl -sS https://get.symfony.com/cli/installer | bash -s -- --install-dir=$INSTALL_PATH

RUN sed -i 's|/var/www/html|${APACHE_DOCUMENT_ROOT}|g' /etc/apache2/sites-available/*.conf