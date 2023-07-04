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