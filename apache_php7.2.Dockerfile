# Source
# https://hub.docker.com/_/php/
# Docker File Source
# https://github.com/docker-library/php/blob/master/7.2/stretch/apache/Dockerfile

#How to build
#sudo docker build -f apache_php7.2.Dockerfile . -t bjverde/php7.2

#How use iterative mode
#sudo docker exec -it apache_php /bin/bash

#######################################
FROM php:7.2-apache 
LABEL maintainer="bjverde@yahoo.com.br"
#COPY ./www /var/www/html
#WORKDIR /var/www/html
EXPOSE 80

#PHP Modules : curl, date, dom, fileinfo, filter, ftp, hash, iconv, json, libxml, libxml, openssl, PDO, pdo_sqlite, Phar, posix, SimpleXML

#Install GIT
#RUN apt-get update && apt-get install -y git-core

#PHP PDO 
RUN docker-php-ext-install pdo

#PHP PDO MySQL
RUN docker-php-ext-install pdo_mysql

#PHP PDO PostgreSql
#RUN apt-get update && apt-get install -y libpq-dev && docker-php-ext-install pdo_pgsql

#PHP Zip
#RUN apt-get update && apt-get install -y zlib1g-dev && docker-php-ext-install zip

#PHP X-Degub
RUN pecl install xdebug && docker-php-ext-enable xdebug