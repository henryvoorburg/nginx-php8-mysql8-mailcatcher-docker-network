FROM php:8-fpm

RUN apt-get update && apt-get install -y zlib1g-dev g++ git libicu-dev zip libzip-dev zip \
    && docker-php-ext-install intl opcache pdo pdo_mysql \
    && pecl install apcu \
    && pecl install xdebug \
    && docker-php-ext-enable apcu \
    && docker-php-ext-configure zip \
    && docker-php-ext-install zip

WORKDIR /var/www/project

# OUD:
# RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# NIEUW:
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

# OUD:
# RUN curl -sS https://get.symfony.com/cli/installer | bash
# RUN mv /root/.symfony/bin/symfony /usr/local/bin/symfony

# NIEUW:
RUN echo 'deb [trusted=yes] https://repo.symfony.com/apt/ /' | tee /etc/apt/sources.list.d/symfony-cli.list
RUN apt update
RUN apt install symfony-cli
