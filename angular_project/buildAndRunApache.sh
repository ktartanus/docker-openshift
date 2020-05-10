#!/bin/bash
npm install toh-pt6
npm build toh-pt6
docker stop angular-apache
docker rm angular-apache
docker build -t my-apapche-server -f apache/dockerfile .
docker run -d -p 8084:80 --name angular-apache -h myapp.mydomain.com my-apapche-server