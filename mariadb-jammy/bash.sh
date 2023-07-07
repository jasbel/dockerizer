# Creacion de contenedor (creacion de imagen)
docker container run \
-dp 3306:3306 \
# Nombre del contenedor
--name world-db \
--env MARIADB_USER=example-user \
--env MARIADB_PASSWORD=user-password \
--env MARIADB_ROOT_PASSWORD=root-secret-password \
--env MARIADB_DATABASE=world-db \
# Grabar el Volumen 
--volume world-db:/var/lib/mysql \
# Conectar red existe
--network world-net \
mariadb:jammy \

docker container ls
docker container rm -f <ip>
