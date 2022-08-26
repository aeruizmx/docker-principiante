# Red de Host
docker run --network host -d --name test2 -ti centos:7
docker exec -ti test2 bash

# La red None
docker run --network none --name hola-none -dti centos:7