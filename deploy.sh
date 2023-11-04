#!/bin/bash

sh <<'EOF'
if [ "$GIT_BRANCH" == "origin/main" ]; then
    withCredentials([usernamePassword(credentialsId: 'Docker_credential', passwordVariable: 'DOCKER_PASSWORD', usernameVariable: 'DOCKER_USERNAME')]) {
        docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD docker.io
        docker tag reactapp:latest reactapp:v1
        docker push faizul04/prod:latest
    }
else
    docker push faizul04/dev:latest  
fi
EOF
