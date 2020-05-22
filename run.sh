#!/bin/sh

. config.txt

# ensure global persist directory exists
if [ ! -d "persist" ]; then
  mkdir persist
  chmod -R 755 persist
fi

# docker run command
docker run \
  --detach \
  --mount  type=bind,source="$(pwd)/persist/",target=/var/lib/mysql \
  --env-file config.txt \
  --name "$CONTAINER_NAME" \
  -p "$LOCAL_PORT":"$CONTAINER_PORT" \
  "$IMAGE_NAME"

sh get-ip.sh
