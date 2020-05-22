#!/bin/sh

. config.txt

git pull origin master
docker pull "$IMAGE_NAME"
