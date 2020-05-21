#!/bin/sh

docker container stop mariadb
docker system prune --force
