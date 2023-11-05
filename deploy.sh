#!/bin/bash

if [[ -n "$GIT_BRANCH" && "$GIT_BRANCH" == "origin/main" ]]; then
    docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
    docker tag reactapp:latest faizul04/prod:latest
    docker push faizul04/prod:latest
else
    docker push faizul04/dev:latest
fi
