#!/bin/sh

# Load config
. load-config.sh

docker start "$CONTAINER_NAME"
