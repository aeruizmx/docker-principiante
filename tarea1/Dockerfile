FROM centos:7

RUN yum install httpd -y

RUN yum install -y epel-release && \
    yum install -y wget && \
    wget http://rpms.remirepo.net/enterprise/remi-release-7.rpm && \
    yum install -y remi-release-7.rpm && \
    yum install -y yum-utils && \
    yum-config-manager --enable remi-php74 && \
    yum update -y

RUN yum -y install php

CMD apachectl -DFOREGROUND

COPY info.php /var/www/html/info.php