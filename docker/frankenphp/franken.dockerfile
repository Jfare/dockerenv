FROM dunglas/frankenphp:php8.3.11-alpine

WORKDIR /app/public

RUN install-php-extensions \
    pdo \
    pdo_pgsql \
    @composer

COPY . /app/public