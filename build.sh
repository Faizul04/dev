#!/bin/bash

docker build -t reactappimg:latest .
docker run -d --name faizul -p 8030:8000 reactappimg
docker tag reactappimg:latest faizul04/dev/reactapp:latest
docker tag reactappimg:latest faizul04/prod/reactapp:latest

