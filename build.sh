#!/bin/bash
sh <<EOF
docker build -t reactappimg .
docker run -d --name newcont -p 80:3000 reactappimg
docker-compose down || true
docker-compose up -d
EOF



