#!/bin/bash

docker build -t reactappimg:latest .
docker tag reactappimg:latest faizul04/dev/reactapp:latest
docker tag reactappimg:latest faizul04/prod/reactapp:latest

