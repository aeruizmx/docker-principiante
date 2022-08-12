docker run -dti -p 5555:80 -m "50mb" --cpuset-cpus 0 -e "ENV=dev" -e "VIRTUALIZATION=docker" --name tarea2 centos-tarea
docker exec -ti tarea2 bash
docker run -dti -p 8181:80 -m "100mb" --cpuset-cpus 0-1 -e "ENV=stg" -e "VIRTUALIZATION=docker" -e " TYPE = container" --name tarea3 centos-tarea
