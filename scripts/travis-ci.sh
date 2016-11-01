#!bin/bash

set -ev

# Build docker image webapp:release
docker build -t macthegenius/webapp:release -f ./dockerfile/release .

# Push docker image webapp:release
docker login -u=$DOCKER_HUB_ID -p=$DOCKER_HUB_PASSWORD
# docker tag macthegenius/webapp:release
docker push macthegenius/webapp:release