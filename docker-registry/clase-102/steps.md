docker run -d -p 5000:5000 --name registry -v $PWD/data/:/var/lib/registry registry:2
 // Taguear imagen
 docker tag hello-world:latest localhost:5000/hello-world
 docker images
 // Poner en data
 docker push localhost:5000/hello-world
 // Eliminar imagen
 docker rmi hello-world localhost:5000/hello-world