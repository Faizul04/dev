#!/bin/bash

docker build -t capstoneimg:latest .
docker run -d --name capstonecont -p 8050:8000 capstoneimg
docker tag capstoneimg:latest faizul04/dev/capstoneimg:latest
docker tag capstoneimg:latest faizul04/prod/capstoneimg:latest

