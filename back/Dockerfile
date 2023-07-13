FROM php:7.1-fpm-alpine
WORKDIR /build
COPY database/ database/
COPY composer.json composer.json
COPY composer.lock composer.lock
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer install \
    --ignore-platform-reqs \
    --no-interaction \
    --no-plugins \
    --no-scripts \
    --prefer-dist \
    --no-autoloader \
    --no-dev
COPY . .
RUN docker-php-ext-install pdo pdo_mysql
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN php artisan key:generate
RUN php artisan config:cache
RUN php artisan optimize:clear
CMD php artisan migrate && php artisan serve --host=0.0.0.0

