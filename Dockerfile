FROM webdevops/php-nginx:latest
RUN apt update -y
COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/
ENV ROOT=/app
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
ENV WEB_DOCUMENT_ROOT /app/public
ENV APP_ENV production
ENV PHP_POST_MAX_SIZE 100M
ENV PHP_MAX_EXECUTION_TIME 300
ENV PHP_UPLOAD_MAX_FILESIZE 100M
ENV PHP_MEMORY_LIMIT 512M
WORKDIR /app
COPY src $ROOT
RUN COMPOSER_MEMORY_LIMIT=-1 composer install     --ignore-platform-reqs     --no-interaction     --no-plugins     --no-scripts     --prefer-dist
RUN chown -R application:application .