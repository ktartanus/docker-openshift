#!/bin/bash
npm install toh-pt6
npm build toh-pt6
docker stop angular-nginx
docker rm angular-nginx
docker build -t my-nginx-server -f nginx/dockerfile .
docker run -dt -p 8085:80 --name angular-nginx my-nginx-server