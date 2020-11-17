up:
	cd ./laradock && docker-compose up -d nginx mysql phpmyadmin workspace maildev

rebuild:
	cd ./laradock && docker-compose build --no-cache workspace php-fpm

stop:
	cd ./laradock && docker-compose stop

down:
	cd ./laradock && docker-compose down

bash:
	cd ./laradock && docker-compose exec --user laradock workspace bash

permission:
	cd ../ && sudo chmod 777 -R $(shell pwd)

env:
	cp .env.example .env
	cd ./laradock && cp env-example .env
