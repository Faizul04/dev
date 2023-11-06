#!/bin/bash

docker build -t reactappimg:latest .
docker run -d --name buildcont -p 9000:8000 reactappimg
docker-compose down || true
docker-compose up -d




