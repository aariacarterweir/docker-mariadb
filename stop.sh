#!/bin/sh

. config.txt

echo "Stopping container:"
docker container stop "$CONTAINER_NAME"
echo "Removing container:"
docker rm "$CONTAINER_NAME"
