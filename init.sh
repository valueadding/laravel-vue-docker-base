#!/bin/bash

docker-compose up -d

docker-compose exec app rm -rf vendor composer.lock

docker-compose exec app composer install

docker-compose exec app php artisan key:generate

docker-compose exec app php artisan breeze:install vue

docker-compose exec app php artisan migrate:fresh --seed

npm install

npm run build
