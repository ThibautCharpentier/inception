# inception

inception is an individual 42 school project where we have to virtualize several Docker images, creating them in a personal virtual machine.

## Status

* Success
* Grade: 100/100

## Rules

We have to set up a small infrastructure composed of different services. The whole project has to be done in a virtual machine. We have to use ```docker compose```.
Each service has to run in a dedicated container. We also have to write our own **Dockerfiles**, one per service. The **Dockerfiles** must be called in our **docker-compose.yml** by our **Makefile**.
We should build ourself the Docker images of our project. It is forbidden to pull ready-made Docker images, as well as using services such as DockerHub.

We then have to set up:
* A Docker container that contains **NGINX** with **TLSv1.2** or **TLSv1.3** only and using **port 443**. It must be the only entrypoint into our infrastructure.
* A Docker container that contains **Wordpress** and **php-fpm** only and using **port 9000**.
* A Docker container that contains **MariaDB** only and using **port 3306**.
* A volume that contains our **Wordpress database**. There must be two users, one of them being the administrator.
* A second volume that contains our **Wordpress website files**.
* A **docker-network** that establishes the connection between our containers.

Our containers have to restart in case of a crash. Our volume will be available in the ```/home/login/data``` folder of the host machine using Docker.
We also have to configure our domain name so it points to our local IP address. This domain name must be ```login.42.fr```.
We can store our variables in an environment variable file like **.env**.

## Usage

* To build the images and deploy the infrastructure:
```
make
```
* To stop the containers:
```
make stop
```
* To remove containers, images, volumes and network:
```
make clean
```
***
Made by Thibaut Charpentier: <thibaut.charpentier42@gmail.com>
