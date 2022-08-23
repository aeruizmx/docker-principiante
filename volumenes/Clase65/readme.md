# steps
docker build -t generador .
docker run -v $PWD/common:/opt/ -d --name gen generador
