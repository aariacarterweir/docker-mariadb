#!/bin/sh

# Load config
. util/load-config.sh

docker exec -it "$CONTAINER_NAME" sh
