docker run -d -p 5555:80 -m "50mb" --cpuset-cpus 0 -e "ENV=dev" -e "VIRTUALIZATION=docker" -v $PWD/opt/source1/:/var/www/html  --name tarea centos-tarea
docker exec -ti tarea bash