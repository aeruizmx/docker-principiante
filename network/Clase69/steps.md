docker network create red_prueba
docker network ls | grep prueba
docker network create -d bridge --subnet 172.124.10.0/24 --gateway 172.124.10.1 docker-test-network
docker network ls | grep docker-test 
docker network inspect 72bae3bb59e8