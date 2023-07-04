# dockerizer
docker help

# View dockers containers
docker container ls
docker container ls -a

# Remove contianer
docker container rm nombre_or_id_container
docker container prune

# images
docker images --help
docker images ls

## remove images
docker images rm name_or_id_image

# Ver lists
docker container ls
## ver todas las listas
docker container ls -a

# Publicar en local contenedor
docker container run docker/getting-started

## correr container
docker container run docker/getting-started

## correr container en 2do plano
docker container run -d docker/getting-started

## correr container en 2do plano con puerto
docker container run -d -p 80:80 docker/getting-started
docker container run -dp 80:80 docker/getting-started
docker container run -dp 8080:80 docker/getting-started

# Parar el contenedor 
docker container ls
docker container stop id_docker_container

docker container stop id_docker_container
docker container start id_docker_container
docker container rm id_docker_container
## Forzar remover contenedor
docker container rm -f id_docker_container
## remover todos contenedor
docker container prune 

# Docker Desktop
puedes hacer lo mismo pero con la interfaz

# Variables en docker

docker pull postgres
## con variables
docker container run --name my-postgres -e POSTGRES_PASSWORD=mysecret -d postgres
## con puerto abiertos
docker container run --name my-postgres -dp 5432:5432 -e POSTGRES_PASSWORD=mysecret postgres

# multtiples conatiner
docker container run \
--name my-postgres \
-e POSTGRES_PASSWORD=mysecret \
-dp 5432:5432 \
postgres

docker container run \
--name my-postgres14 \
-e POSTGRES_PASSWORD=mysecret \
-dp 5433:5432 \
postgres:14-alpine3.17

# Maria DB
docker pull mariadb:jammy

docker container run \
--name mariadb \
-e MARIADB_RANDOM_ROOT_PASSWORD=yes \
-dp 3306:3306 \
mariadb:jammy

// root
