# Steps
docker build -t centos-test .
docker run -dti --name centos centos-test
docker exec -ti centos bash
cd /opt/
touch file1.txt
docker commit centos centos-resultante 
docker run -dti --name centos centos-resultante /bin/bash
