#!/bin/bash
npm install toh-pt6
npm build toh-pt6
docker stop angular-node
docker rm angular-node
docker build --rm -t angular-node-application -f node/dockerfile .
docker run -d --name angular-node -p 8086:8086 angular-node-application
   