#!/bin/sh

# Load config
. load-config.sh

echo "Stopping container:"
docker container stop "$CONTAINER_NAME"
echo "Removing container:"
docker rm "$CONTAINER_NAME"
