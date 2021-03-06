#!/bin/bash

# This script downloads the symfony demo and installs the data for the demo
# then starts the symfony server on 127.0.0.1

SYMFONYBIN=/usr/bin/symfony
CONTNAME=docker-symfony-get-started_php-fpm_1

docker exec -w /var/www $CONTNAME $SYMFONYBIN new --demo demo
docker exec -w /var/www/demo $CONTNAME $SYMFONYBIN console doctrine:database:create
docker exec -w /var/www/demo $CONTNAME $SYMFONYBIN console doctrine:schema:update
docker exec -w /var/www/demo $CONTNAME $SYMFONYBIN console doctrine:schema:update --force
docker exec -w /var/www/demo $CONTNAME $SYMFONYBIN console doctrine:fixtures:load
docker exec -w /var/www/demo $CONTNAME $SYMFONYBIN serve
