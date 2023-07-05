# Remover imagenes con estado unused
```
docker image prune --all --filter "dangling=true"
```

# ingresar
```
docker exec -it mycontainer bash
```

## mysql
```
docker exec -it mysql mysql -uroot -p
# Test1235
```

# Reinitilize dockker container
```
docker-compose down && docker-compose build && docker-compose up
```
## Forzar reconstruccion
docker-compose up --build

# Remover
## Remover todos los contenedores
```
docker container rm -f $(docker container ls -aq)
```