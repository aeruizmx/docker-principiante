# steps
1110  docker build -t generador .
 1111  docker run -v $PWD/common:/opt/ -d --name gen generador
 1112  docker build -t generador .
 1113  docker run -v $PWD/common:/opt/ -d --name gen generador
 1114  docker run -d --name nginx -v $PWD/common:/usr/share/nginx/html nginx
 1115  docker ps
 1116  docker rm -fv 31aa36c985dd
 1117  docker run -d --name nginx -v $PWD/common:/usr/share/nginx/html -p 80:80  nginx
 1118  docker ps
 1119  docker rm -fv $(docker ps -aq)
 1120  docker ps
 1121  docker build -t generador .
 1122  docker run -v $PWD/common:/opt/ -d --name gen generador
 1123  docker run -d --name nginx -v $PWD/common:/usr/share/nginx/html -p 80:80  nginx