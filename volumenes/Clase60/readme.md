# steps 
docker volume create mysql-data
docker volume ls
docker volume rm mysql-data
docker volume ls
docker volume create my-volume
docker run -d --name mysql -v my-volume:/var/lib/mysql -p 3306:3306 -e "MYSQL_ROOT_PASSWORD=12345678" -e "MYSQL_DATABASE=docker-db" mysql:5.7