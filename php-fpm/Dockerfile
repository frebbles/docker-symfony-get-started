FROM php:7.4-fpm-alpine
RUN apk --update --no-cache add git bash sqlite
RUN wget https://get.symfony.com/cli/installer -O - | bash && ln -s /root/.symfony/bin/symfony /usr/bin/symfony
COPY --from=composer /usr/bin/composer /usr/bin/composer
WORKDIR /var/www
RUN git config --global user.email "user@example.com"
RUN git config --global user.name "Example User"
CMD composer install ; bin/console doctrine:migrations:migrate ; php-fpm
EXPOSE 9000 8000
