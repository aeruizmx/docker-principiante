FROM maven:3.5-alpine as builder

COPY app /app

RUN cd /app && mvn package

FROM openjdk:8-alpine

COPY --from=builder /app/target/my-app-1.0-SNAPSHOT.jar /opt/app.jar

CMD java -jar /opt/app.jar

#  903  mkdir multi
#   904  cd multi
#   905  git clone https://github.com/jenkins-docs/simple-java-maven-app.git
#   906  mv simple-java-maven-app app
#   907  docker build -t java
#   908  ls
#   909  docker build -t java
#   910  docker
#   911  docker build -t java .
#   912  docker build -t java .
#   913  docker ps
#   914  docker ps -a
#   915  docker run -d java
#   916  docker ps
#   917  docker ps -a
#   918  docker logs loving_elion