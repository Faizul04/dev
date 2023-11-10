#!/bin/bash

docker build -t capstoneimg:latest .
docker run -d --name faizul -p 8040:8000 capstoneimg
docker tag capstoneimg:latest faizul04/dev/capstoneimg:latest
docker tag capstoneimg:latest faizul04/prod/capstoneimg:latest

