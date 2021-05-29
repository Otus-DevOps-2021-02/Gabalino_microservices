yc compute instance create \
--name docker-host \
--zone ru-central1-a \
--network-interface subnet-name=app-subnetdocker ls,nat-ip-version=ipv4 \
--create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1804-lts,size=15 \
--ssh-key ~/.ssh/id_rsa.pub

# yc compute instance delete --name docker-host