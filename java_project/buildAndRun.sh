#!/bin/bash

javac Hello.java
docker build -t simple-java-application .
docker run -d --name java-hello simple-java-application 
