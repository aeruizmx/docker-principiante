vi start.sh
docker-compose build .
docker-compose build
docker-compose up -d
docker ps
docker logs -f test
docker ps -a
watch -d docker ps
docker logs -f test
docker stop test