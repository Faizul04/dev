#!/bin/bash

DEV_IMAGE_NAME="faizul04/dev/capstoneimg:latest"
PROD_IMAGE_NAME="faizul04/prod/capstoneimg:latest"

docker buildx create --use
docker buildx build -t capstoneimg:latest .
docker run -itd -p 2000:8000 capstoneimg
docker tag capstoneimg:latest $DEV_IMAGE_NAME
docker tag capstoneimg:latest $PROD_IMAGE_NAME

