docker run -d --network docker-test-network --name cont1 -ti centos:7
docker run -d --network docker-test-network --name cont2 -ti centos:7
docker run -d --network test1 --name cont3 -ti centos:7
docker network connect docker-test-network cont3
docker exec cont1 bash -c "ping cont3" - Ahora si contesta
docker network disconnect docker-test-network cont3