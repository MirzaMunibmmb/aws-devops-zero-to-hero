#!/bin/bash
set -e

# Stop the running container (if any)
docker ps || true

docker stop simple-python-flask-app || true
docker rm simple-python-flask-app || true
