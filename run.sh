#!/bin/sh

# ensure global persist directory exists
if [ ! -d "persist" ]; then
  mkdir persist
  chmod -R 755 persist
fi

# docker run command
docker run \
  --detach \
  --tty \
  --mount  type=bind,source="$(pwd)/persist/",target=/app/persist \
  --env-file .env \
  --name "docker-mariadb" \
  mariadb/server:latest
