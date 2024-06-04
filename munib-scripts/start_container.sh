#!/bin/bash 

set -e 

docker pull mirzamunibbaig/simple-python-flask-app:$CODEBUILD_BUILD_NUMBER 

docker run –d –name simple-python-flask-app –p 8000:5000 mirzamunibbaig/simple-python-flask-app:$CODEBUILD_BUILD_NUMBER