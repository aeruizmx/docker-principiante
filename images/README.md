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



