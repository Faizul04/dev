#!/bin/bash

if ["$GIT_BRANCH" = "origin/main" ]; then
        build.sh
        docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD docker.io
        docker tag reactapp:latest faizul04/prod:v1
        docker push faizul04/prod:v1
else
    docker push faizul04/dev:latest  
fi
