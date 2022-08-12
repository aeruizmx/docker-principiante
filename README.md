# IMAGENES

# CONSTRUIR
docker build -t apache-centos:apache-cmd .

# CORRER EN PUERTO 80
docker run -d --name apache1 -p 80:80 apache-centos:apache-cmd 

# ELIMINAR 
docker rm -f naughty_solomon
# ELIMINAR IMAGEN
docker rmi apache-centos

# CONSTRUIR CON OTRO DOCKEFILES
docker build -t test -f my-dockerfile .

# IMAGENES NO REFERENCIADAS
docker-images % docker images -f dangling=true 
# BUSCAR HUERFANAS Y BORRAR
docker-images % docker images -f dangling=true -q | xargs docker Y EL PULL DE IMAGENES

# Si notas un error (502) en la siguiente lección con nginx, por favor reemplaza esta parte del Dockerfile:

#     --enablerepo=ius && yum clean all

# por esto:

#     --enablerepo=ius-archive && yum clean all

# Listar un contenedor
docker ps

# Listar todos los contenedores
docker ps -a

# Ayuda
docker run --help|less

# CONTENEDORES

# Crear un contenedor la primera vez, -d segundo plano, 
docker run -d jenkins/jenkins
# Puerto computadora:puerto imagen 8080
docker run -d -p 8080:8080 jenkins/jenkins
# puerto 9090
docker run -d -p 9090:8080 jenkins/jenkins
# Renombrar contenedor
docker rename zealous_khorana nuevo_nombre_jenkins
# Detener contenedor
docker stop nuevo_nombre_jenkins
# Iniciar contenedor
docker start nuevo_nombre_jenkins
# Reiniciar contenedor
docker restart nuevo_nombre_jenkins
# Ingresar a un contenedor, exec - ejecutar, -ti bash
docker exec -ti nuevo_nombre_jenkins bash
# User @ host
jenkins@8a2ce3d42aef
# Cambiar user y host en contenedor
docker exec -u root -ti nuevo_nombre_jenkins bash

# Mostrar los ids
docker ps -q 
# Eliminar contenedores
docker ps -q | xargs docker rm -f

# Agregar variable de entorno a la imagen desde comando
docker run -dti -e "prueba1=4321"  --name enviroment2 enviroment

# MySQL
docker run -d --name my-db1 -e "MYSQL_ROOT_PASSWORD=123456" mysql:5.7
mysql -u root -h 172.17.0.2 -p123456
docker run -d -p 3333:3306 --name my-db2 -e "MYSQL_ROOT_PASSWORD=123456" -e "MYSQL_DATABASE=docker_db" -e "MYSQL_USER=docker" -e "MYSQL_PASSWORD=secret" mysql:5.7
mysql -u docker_user -psecret --port 3333
# Inspeccionar contenedor, sacar ip, etc
docker inspect my-db1

# Cuanta RAM usa un contenedor
docker stats my-mongo2

# Ver logs de contenedor
docker logs -f my-mongo2
1003  docker run -d --name my-mongo -p 27017:27017
 1004  docker run -d --name my-mongo -p 27017:27017 mongo
 1005  docker run -d --name my-mongo2 -p 27018:27017 mongo
 1006  docker stats my-mongo2

# Nginx Apache y Tomcat
 1007  docker run -d -p 8888:80 --name nginx  nginx
 1008  docker run -d -p 9999:80 --name apache httpd
 1009  docker run -d -p 9999:80 --name tomcat tomcat:9.0.8-jre8-alpine
 1010  docker run -d -p 7777:80 --name tomcat tomcat:9.0.8-jre8-alpine