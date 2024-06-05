#!/bin/bash

set -e

env:
  parameter-store:
    DOCKER_HUB_ID: /simple-python-app/codebuild/build-number


# Debug: Print the value of CODEBUILD_BUILD_NUMBER
echo "CODEBUILD_BUILD_NUMBER: $DOCKER_HUB_ID"

# Pull the Docker image
docker pull mirzamunibbaig/simple-python-flask-app:$DOCKER_HUB_ID

# Run the Docker container
docker run -d --name simple-python-flask-app -p 6012:5000 mirzamunibbaig/simple-python-flask-app:$latest
