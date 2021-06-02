docker-machine create \
--driver generic \
--generic-ip-address=84.201.157.131 \
--generic-ssh-user yc-user \
--generic-ssh-key ~/.ssh/id_rsa \
docker-host

eval $(docker-machine env docker-host)

# docker-machine rm -f docker-host
