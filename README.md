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