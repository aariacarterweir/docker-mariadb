#!/bin/sh

# Load config
. load-config.sh

# ensure global shared directories exist
if [ ! -d "shared/mysql" ]; then
  mkdir -p shared/mysql
fi

if [ ! -d "shared/files" ]; then
  mkdir -p shared/files
fi

# docker run command
docker run \
  --detach \
  --tty \
  --mount  type=bind,source="$(pwd)/shared/mysql/",target=/var/lib/mysql \
  --mount  type=bind,source="$(pwd)/shared/files/",target=/shared \
  --env MARIADB_ALLOW_EMPTY_PASSWORD="$MARIADB_ALLOW_EMPTY_PASSWORD" \
  --env MYSQL_ROOT_PASSWORD="$MYSQL_ROOT_PASSWORD" \
  --env MARIADB_USER="$MARIADB_USER" \
  --env MARIADB_PASSWORD="$MARIADB_PASSWORD" \
  --name "$CONTAINER_NAME" \
  -p "$LOCAL_PORT":"$CONTAINER_PORT" \
  "$IMAGE_NAME"
