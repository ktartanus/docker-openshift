#!/bin/bash
mvn clean package
docker stop spring-boot-hello
docker rm spring-boot-hello
docker build --rm -t simple-spring-boot-application .
docker run -d --name spring-boot-hello -p 8083:8080 simple-spring-boot-application
   