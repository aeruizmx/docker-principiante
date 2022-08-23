# steps
docker run -d --name jenkins -p 8080:8080 -v /Users/aruiz/Docker/:/var/jenkins_home jenkins/jenkins
docker exec jenkins bash -c "cat /var/jenkins_home/secrets/initialAdminPassword"
docker rm -fv jenkins
docker run -d --name jenkins -p 8080:8080 -v /Users/aruiz/Docker/jenkins/:/var/jenkins_home jenkins/jenkins