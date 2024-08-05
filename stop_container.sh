#!/bin/bash
set -e

# Stop the running container (if any)
CONTAINER_ID=$(docker ps -q --filter "ancestor=akash5500/simple-python-flask-app")

if [ -n "$CONTAINER_ID" ]; then
  echo "Stopping container $CONTAINER_ID"
  docker stop $CONTAINER_ID
else
  echo "No running container found for image akash5500/simple-python-flask-app"
fi
