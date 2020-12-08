FROM php:7.4-fpm-alpine
COPY wait-for-it.sh /usr/bin/wait-for-it
RUN chmod +x /usr/bin/wait-for-it
RUN apk --update --no-cache add git bash sqlite
RUN docker-php-ext-install pdo_mysql
RUN wget https://get.symfony.com/cli/installer -O - | bash && ln -s /root/.symfony/bin/symfony /usr/bin/symfony
COPY --from=composer /usr/bin/composer /usr/bin/composer
WORKDIR /var/www
RUN git config --global user.email "user@example.com"
RUN git config --global user.name "Example User"
CMD composer install ; wait-for-it database:3306 -- bin/console doctrine:migrations:migrate ; php-fpm
EXPOSE 9000 8000
