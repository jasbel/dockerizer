docker run \
--name phpmyadmin \
-d \
-e PMA_ARBITRARY=1 \
-p 8080:80 \
# Conectar red existe
--network world-net \
phpmyadmin:5.2.0-apache \

# localhost:8080, no puedes conectarte directamente si no estas con network


docker container ls
docker container rm -f <ip>