docker run -d --name nginx -p 80:80 nginx
docker-compose up -d
docker-compose down

echo "MYSQL_ROOT_PASSWORD=123456" > common.env
docker exec -ti mysql bas