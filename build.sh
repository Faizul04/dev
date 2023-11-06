#!/bin/bash

docker build -t reactappimg:latest 
docker build -t reactappimg:latest,faizul04/dev/reactapp:latest faizul04/prod
docker run -d --name test -p 9090:8000 reactappimg
docker-compose down || true
docker-compose up -d
