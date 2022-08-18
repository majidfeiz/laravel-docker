## Install laravel 8 in docker

Clone repository on your system and run docker compose 
````
git clone https://github.com/majidfeiz/laravel-docker.git
cd laravel
git clone https://github.com/laravel/laravel.git src
cp .env.example .env
docker-compose up -d
docker exec -it laravel-web cp .env.example .env
docker exec -it laravel-web composer install
docker exec -it laravel-web php artisan key:generate
````
Open your laravel on port 80 for example localhost:80

Note: you can change the ports on docker-compose.yml file

## Laravel

If you need to write command on your laravel project follow this commands :

````
docker exec -it laravel-web composer install
docker exec -it laravel-web composer update
docker exec -it laravel-web php artisan ....

````

If you need go in container follow this command:

````
docker exec -it laravel-web /bin/bash
````

## Redis
If you need go on redis cli follow this command :

````
docker exec -it laravel-redis redis-cli
````
## Mysql
If you need go in mysql follow this command :

````
docker exec -it laravel-db mysql -u test -p
````
Test is your database username and after enter, fill in your password.


If you need phpmyadmin open localhost on port 8080 and fill in username and password 

Note : your server name is  "laravel-db"
