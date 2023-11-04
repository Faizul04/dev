#!/bin/bash
sh <<EOF
docker build -t reactappimg .
docker run -it -d --name newcont reactappimg
docker-compose down || true
docker-compose up -d
EOF



