# steps
docker run -d --name nginx nginx
docker rm -fv $(docker ps -aq)
docker run -d --name nginx -p 80:80 -v /home/aruiz/Docker/nginx:/var/log/nginx nginx