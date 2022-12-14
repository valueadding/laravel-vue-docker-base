#!/bin/bash

docker-compose exec app php artisan key:generate

docker-compose exec app php artisan migrate:fresh --seed

npm install

npm run build
