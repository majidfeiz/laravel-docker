<p align="center">
  <a href="" rel="noopener">
 <img width=600px height=350px src="https://www.pikemere.co.uk/wp-content/uploads/2022/04/laravel-docker.jpg" alt="Project logo"></a>
</p>

<h3 align="center">Laravel Docker</h3>

<div align="center">

[![Status](https://img.shields.io/badge/status-active-success.svg)]()
[![GitHub Issues](https://img.shields.io/github/issues/majidfeiz/laravel-docker.svg)](https://github.com/majidfeiz/laravel-docker/issues)
[![GitHub Pull Requests](https://img.shields.io/github/issues-pr/majidfeiz/laravel-docker.svg)](https://github.com/majidfeiz/laravel-docker/pulls)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](/LICENSE)

</div>

---

<p align="center"> 
Build a simple laravel development environment with mysql , redis by docker compose
    <br> 
</p>

## 📝  Contents

- [About](#about)
- [Getting Started](#getting_started)
- [Prerequisites](#prerequisites)
- [Usage](#usage)
- [Built Using](#built_using)
- [Contributing](https://github.com/majidfeiz/laravel-docker/contributors)
- [Authors](#authors)

## 🧐 About <a name = "about"></a>

Build a simple laravel development environment with docker-compose. Compatible with Windows, macOS and Linux with mysql , redis by docker compose


## 🏁 Getting Started <a name = "getting_started"></a>

 See [Prerequisites](#prerequisites) for notes on how to deploy the project on your system.

### Prerequisites <a name = "prerequisites"></a>

1. Install `docker` in your system.
2. Clone the project `https://github.com/majidfeiz/laravel-docker.git`
3. Make development environment ready using commands below :
```
$ git clone https://github.com/majidfeiz/laravel-docker.git
$ cd laravel-docker
$ git clone https://github.com/laravel/laravel.git src
$ cp .env.example .env
$ docker-compose up -d
$ docker exec -it laravel-web cp .env.example .env
$ docker exec -it laravel-web php artisan key:generate
```
Now you can start your laravel on your custom port for example [localhost:8080](localhost:8080) or [127.0.0.1:8080](127.0.0.1:8080)

### Installing

Install docker in your system using below links :

- [MacOS](https://docs.docker.com/desktop/install/mac-install/)
- [Windows](https://docs.docker.com/desktop/install/windows-install/)
- [Linux](https://docs.docker.com/desktop/install/linux-install/)



## 🎈 Usage <a name="usage"></a>

#### Laravel

If you need to write command on your laravel project follow below commands :

````
docker exec -it laravel-web php artisan ....

````

If you need go in container follow below command:

````
docker exec -it laravel-web /bin/bash
````

#### Redis
If you need go on redis cli follow below command :

````
docker exec -it laravel-redis redis-cli
````
#### Mysql
If you need go in mysql follow below command :

````
docker exec -it laravel-db mysql -u test -p
````


If you need `phpmyadmin` open `localhost` on port 8080 and fill in username and password 

Note : your database host name is  `laravel-db`


## ⛏️ Built Using <a name = "built_using"></a>

- [Mysql](https://www.mysql.com/) - Database
- [Docker](https://www.docker.com/) - Software
- [Laravel](https://laravel.com/) - PHP web framework,
- [Redis](https://redis.io/) - NoSql Database

## ✍️ Authors <a name = "authors"></a>

- [@Majidfeiz](https://github.com/majidfeiz) - Idea & Initial work

See also the list of [contributors](https://github.com/majidfeiz/laravel-docker/contributors) who participated in this project.


