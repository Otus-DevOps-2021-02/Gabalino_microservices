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
__Docker machine__
```
yc compute instance create \
--name docker-host \
--zone ru-central1-a \
--network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
--create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1804-lts,size=15 \
--ssh-key ~/.ssh/id_rsa.pub

docker-machine create \
--driver generic \
--generic-ip-address=84.201.133.229 \
--generic-ssh-user yc-user \
--generic-ssh-key ~/.ssh/id_rsa \
docker-host

eval $(docker-machine env docker-host)

docker-machine ls
docker-machine ip docker-host
```
