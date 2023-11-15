#!/bin/bash

docker build -t capstoneimg:latest .
docker run -d --name Trustcont -p 3000:8000 capstoneimg
docker tag capstoneimg:latest faizul04/dev/capstoneimg:latest
docker tag capstoneimg:latest faizul04/prod/capstoneimg:latest

