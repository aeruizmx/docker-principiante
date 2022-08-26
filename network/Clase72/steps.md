docker run -d --network docker-test-network --name cont1 -ti centos:7
docker run -d --network docker-test-network --name cont2 -ti centos:7
docker inspect cont1
docker inspect cont2
docker exec cont1 bash -c "ping 172.124.10.2"
docker exec cont1 bash -c "ping cont2"
docker run -d --network test1 --name cont3 -ti centos:7
docker exec cont1 bash -c "ping cont3" - No contesta