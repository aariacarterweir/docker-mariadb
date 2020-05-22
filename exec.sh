#!/bin/sh

# Load config
. load-config.sh

docker exec -it "$CONTAINER_NAME" sh
