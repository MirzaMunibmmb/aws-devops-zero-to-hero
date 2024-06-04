#!/bin/bash

set -e

# Pull the Docker image
docker pull mirzamunibbaig/simple-python-flask-app:$CODEBUILD_BUILD_NUMBER

# Run the Docker container
docker run -d --name simple-python-flask-app -p 8000:5000 mirzamunibbaig/simple-python-flask-app:$CODEBUILD_BUILD_NUMBER
