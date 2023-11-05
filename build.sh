#!/bin/bash
sh <<EOF
docker build -t reactappimg .
docker run -d --name mycont -p 9000:8000 reactappimg
docker-compose down || true
docker-compose up -d
EOF



