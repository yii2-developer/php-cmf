FROM nsign/php-docker:5.4-fpm

RUN \
    apt-get install -y php5-intl libicu-dev \
    && pecl install intl \
    && docker-php-ext-install intl \
    && docker-php-ext-enable intl \

    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-enable pdo_mysql \

    && pecl install xdebug \
    && docker-php-ext-enable xdebug \

    && apt-get autoremove -y && apt-get clean all
