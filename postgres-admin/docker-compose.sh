docker volume create postgress-v

docker container run \
-d \
--name postgres-db \
-e POSTGRES_PASSWORD=123456 \
-v postgres-v:/var/lib/ \
-p 443:443
postgres:15.1

