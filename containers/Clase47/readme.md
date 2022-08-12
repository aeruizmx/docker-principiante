# Clase 47 Administrar usuarios
docker build -t centos:prueba .
docker run -d -ti --name prueba centos:prueba
docker exec -ti prueba bash
  echo $prueba
docker build -t centos:prueba1 . 
docker run -d -ti --name prueba1 centos:prueba1
docker ps
docker exec -ti prueba1 bash
docker build -t centos:prueba2 .
docker run -d -ti --name prueba2 centos:prueba2
docker exec -ti prueba2 bash
docker exec -u andres -ti prueba2 bash
docker exec -u root -ti prueba1 bash