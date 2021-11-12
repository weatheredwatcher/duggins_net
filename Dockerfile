#Dockerfile
FROM php:8.1.0RC6-fpm
RUN apt-get update && apt-get install -y \
libpq-dev \
git \
curl \
libpng-dev \
libonig-dev \
libxml2-dev \
libzip-dev \
zip \
unzip

RUN docker-php-ext-install pdo_pgsql pgsql mbstring zip exif pcntl


WORKDIR /app
COPY . /app


EXPOSE 8000

CMD php artisan serve --host 0.0.0.0 --port 8000
