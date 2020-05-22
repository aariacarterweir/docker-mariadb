#!/bin/sh

# Load config
. util/load-config.sh

docker system prune -a --force
git pull origin master
docker pull "$IMAGE_NAME"
