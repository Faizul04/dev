#!/bin/bash

docker build -t reactappimg:faizul04/dev .
docker run -d --name buildcont -p 9000:8000 reactappimg
docker-compose down || true
docker-compose up -d




