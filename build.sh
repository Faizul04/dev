#!/bin/bash

DEV_IMAGE_NAME="faizul04/dev/capstoneimg:latest"
PROD_IMAGE_NAME="faizul04/prod/capstoneimg:latest"

docker build -t capstoneimg:latest .
docker rm -f capstone_container || true
docker run -itd --name capstone_container capstoneimg
docker tag capstoneimg:latest $DEV_IMAGE_NAME
docker tag capstoneimg:latest $PROD_IMAGE_NAME


