FROM centos

RUN cd /etc/yum.repos.d/
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*

RUN yum install httpd -y

# Se copia carpeta beryllium de raiz a directorio en contenedor centos
# COPY beryllium /var/www/html

# Permite agregar url hacia un archivo
ADD startbootstrap-freelancer-master /var/www/html

CMD apachectl -DFOREGROUND
