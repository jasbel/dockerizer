docker container rm -f <ip-container>
docker container prune

docker volume rm <ip-volume>
docker volume prune  # remove all

docker network rm <ip-network>
docker network prune