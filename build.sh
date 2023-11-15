#!/bin/bash


sh <<EOF
docker build -t reactappimg .
docker run -d --name container5t -p 8090:8000 reactappimg
docker-compose down || true
docker-compose up -d
EOF



docker build -t capstoneimg:latest .
docker run -d --name Trustcont -p 3000:8000 capstoneimg
docker tag capstoneimg:latest faizul04/dev/capstoneimg:latest
docker tag capstoneimg:latest faizul04/prod/capstoneimg:latest

