#!/bin/bash

docker build -t capstoneimg:latest .
docker run -itd -p 2000:8000 capstoneimg
docker tag capstoneimg:latest faizul04/dev/capstoneimg:latest
docker tag capstoneimg:latest faizul04/prod/capstoneimg:latest

