# Volumenes de HOST
# Steps
docker run -d --name db -p 3306:3306 -e "MYSQL_ROOT_PASSWORD=12345678"  -v /Users/aruiz/Documents/Proyectos/docker-images/volumenes/Clase57/opt/mysql:/var/lib/mysql mysql:5.7
