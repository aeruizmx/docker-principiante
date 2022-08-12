# Steps
# Limitar RAM
docker run -d --name mongo mongo
docker stats mongo
docker run -d -m "500mb" --name mongo2 mongo
docker stats mongo2
docker run -d -m "500gb" --name mongo3 mongo
docker stats mongo3 
# Limitar CPU
docker run -d -m "1gb" --cpuset-cpus 0-1 --name mongo4 mongo
docker stats mongo4
docker run -d -m "40mb" --cpuset-cpus 0-1 --name mongo5 mongo
docker stats mongo5
