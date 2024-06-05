#!/bin/bash

set -e

# Debug: Print the value of CODEBUILD_BUILD_NUMBER
#echo "CODEBUILD_BUILD_NUMBER: latest"

# Pull the Docker image
docker pull mirzamunibbaig/simple-python-flask-app:latest

# Run the Docker container
docker run -d --name simple-python-flask-app -p 6012:5000 mirzamunibbaig/simple-python-flask-app:latest
