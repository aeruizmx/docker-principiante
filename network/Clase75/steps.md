# Asignar IP a un contenedor
docker network create -d bridge --subnet 172.128.10.0/24 --gateway 172.128.10.1 my-net
docker network ls | grep my-net
docker run --network my-net -d --name nginx1 -ti centos:7
docker run --network my-net --ip 172.128.10.50 -d --name nginx2 -ti centos:7
docker inspect nginx2