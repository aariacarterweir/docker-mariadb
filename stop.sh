#!/bin/sh

# Load config
. util/load-config.sh

echo "Stopping container:"
docker container stop "$CONTAINER_NAME"
echo "Removing container:"
docker rm "$CONTAINER_NAME"
