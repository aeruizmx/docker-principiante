# docker-principiante

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