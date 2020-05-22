#!/bin/sh

# Load config
. load-config.sh

docker system prune -a --force
git pull origin master
docker pull "$IMAGE_NAME"
