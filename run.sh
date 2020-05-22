#!/bin/sh

# Load config
. load-config.sh

# ensure global persist directory exists
if [ ! -d "persist" ]; then
  mkdir persist
fi

# ensure global persist directory exists
if [ ! -d "shared" ]; then
  mkdir shared
  chmod -R 755 shared
fi

# docker run command
docker run \
  --detach \
  --mount  type=bind,source="$(pwd)/persist/",target=/var/lib/mysql \
  --mount  type=bind,source="$(pwd)/shared/",target=/shared \
  --env-file config.txt \
  --name "$CONTAINER_NAME" \
  -p "$LOCAL_PORT":"$CONTAINER_PORT" \
  "$IMAGE_NAME"
