# Steps
docker run -d --name apache -p 80:80 httpd
echo ":)" > index.html
docker cp index.html apache:/tmp
docker exec -ti apache bash
cd /tmp
ls -l
cat index.html
docker cp index.html apache:/usr/local/apache2/htdocs/index.html
docker cp apache:/var/log/dpkg.log .