# Steps
docker run -dti centos echo hola mundo
docker run -d -p 8080:8080 centos python -m SimpleHTTPServer 8080
docker run -d -p 8080:8080 centos:7 python -m SimpleHTTPServer 8080