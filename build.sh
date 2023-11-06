#!/bin/bash

docker build -t reactappimg:latest .
docker tag reactappimg:latest faizul04/dev/reactapp:latest
docker tag reactappimg:latest faizul04/prod/reactapp:latest
docker run -d --name kiki -p 8090:8000 reactappimg
docker-compose down || true
docker-compose up -d
