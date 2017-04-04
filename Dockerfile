FROM nsign/php-docker:5.4-fpm

RUN apt-get install -y php5-intl libicu-dev
RUN pecl install intl
RUN docker-php-ext-install intl
RUN docker-php-ext-enable intl

RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-enable pdo_mysql

RUN apt-get autoremove -y && apt-get clean all
