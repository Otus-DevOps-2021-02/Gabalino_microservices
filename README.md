# Шпаргалка Gabalino

__Docker__
```
docker build -t reddit:latest .
docker run --name reddit -d --network=host reddit:latest
docker login
docker tag reddit:latest <your-login>/otus-reddit:1.0
docker push <your-login>/otus-reddit:1.0
docker run --name reddit -d -p 9292:9292 <your-login>/otus-reddit:1.0
```
```
docker logs reddit -f
docker exec -it reddit bash
docker rm $(docker ps -a -q)
docker rmi $(docker images -q)
docker system prune
```
