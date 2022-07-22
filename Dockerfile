FROM centos

RUN cd /etc/yum.repos.d/
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*

RUN yum install httpd -y

# Poner el directorio de trabajo
WORKDIR /var/www/html
# Se copia carpeta beryllium de raiz a directorio en contenedor centos
# COPY beryllium /var/www/html

# Permite agregar url hacia un archivo
ADD startbootstrap-freelancer-master .

# Agregar variables de entorno
ENV contenido 'ESTOY INSERTANDO EN ESTA PAGINA'
RUN echo "$contenido" > /var/www/html/prueba.html

# Exponer cualquier puerto para usarlo
EXPOSE 8080

CMD apachectl -DFOREGROUND
