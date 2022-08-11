FROM centos

# METADATA DE LA IMAGEN
LABEL version=1.0
LABEL description='This is an apache image'
LABEL vendor=yo

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
#EXPOSE 8080

RUN echo "$(whoami)" > /var/www/html/user1.html

RUN useradd ricardo
#RUN chown ricardo /var/www/html

USER ricardo

RUN echo "$(whoami)" > /tmp/user2.html

#Para que quede guardado en ordenador
#VOLUME /var/www/html

USER root

RUN cp /tmp/user2.html /var/www/html/user2.html

COPY run.sh /run.sh
CMD sh /run.sh
