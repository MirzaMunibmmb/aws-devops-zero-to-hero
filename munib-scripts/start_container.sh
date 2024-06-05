#!/bin/bash

set -e

# Retrieve the build number from SSM Parameter Store
build_number=$(aws ssm get-parameter --name "/simple-python-app/codebuild/build-number" --query "Parameter.Value" --output text)

# Debug: Print the value of CODEBUILD_BUILD_NUMBER
echo "CODEBUILD_BUILD_NUMBER: $build_number"

# Pull the Docker image
docker pull mirzamunibbaig/simple-python-flask-app:$build_number

# Run the Docker container
docker run -d --name simple-python-flask-app -p 6012:5000 mirzamunibbaig/simple-python-flask-app:$build_number
