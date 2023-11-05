#!/bin/bash

if [ "$GIT_BRANCH" == "origin/main" ]; then
        docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD docker.io
        docker tag reactapp:latest reactapp:v1
        docker push faizul04/prod:latest
    }
else
    docker push faizul04/dev:latest  
fi
