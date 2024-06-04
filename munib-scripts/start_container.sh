#!/bin/bash

set -e

# Debug: Print the value of CODEBUILD_BUILD_NUMBER
echo "CODEBUILD_BUILD_NUMBER: $CODEBUILD_BUILD_NUMBER"

# Pull the Docker image
docker pull mirzamunibbaig/simple-python-flask-app:$CODEBUILD_BUILD_NUMBER

# Run the Docker container
docker run -d --name simple-python-flask-app -p 8000:5000 mirzamunibbaig/simple-python-flask-app:$CODEBUILD_BUILD_NUMBER
