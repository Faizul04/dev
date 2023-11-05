#!/bin/bash
sh <<EOF
docker build -t reactappimg .
docker run -d --name testcont -p 8090:8000 reactappimg
docker-compose down || true
docker-compose up -d
EOF



