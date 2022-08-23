# steps
1042  docker build -t test-vol -f Dockerfile .
 1043  docker run -dti --name test test-vol
 1044  docker volume ls
 1045  docker exec -ti test bash
 1046  docker ps
 1047  docker volume ls
 1048  docker info | grep -i root
 1049  sudo cd /var/lib/docker
 1050  docker rm -f test
 1051  docker volume rm 5f1b989b27a7136fdc5699f3e6f454b7ed05c259e75f57f5070c548335f4c16f