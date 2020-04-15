#!/usr/bin/env bash

docker-compose up -d --force-recreate --build --remove-orphans

# COMPOSER UPDATE
docker run --rm --interactive --tty \
  --volume $PWD/../:/app \
  --volume $HOME/.composer:/tmp \
  --user $(id -u):$(id -g) \
  composer update --prefer-dist
