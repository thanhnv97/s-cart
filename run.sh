#!/bin/sh
composer install
chmod -R 777 storage public/data vendor bootstrap/cache app/Plugins .env
php artisan migrate
php artisan db:seed