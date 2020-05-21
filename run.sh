#!/bin/sh

# ensure global persist directory exists
if [ ! -d "persist" ]; then
  mkdir persist
  chmod -R 755 persist
fi

# docker run command
docker run \
  --detach \
  --mount  type=bind,source="$(pwd)/persist/",target=/persist \
  --env-file .env \
  --name mariadb \
  aariacarterweir/mariadb-server

sh get-ip.sh
