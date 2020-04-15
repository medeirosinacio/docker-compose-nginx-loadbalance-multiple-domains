#!/usr/bin/env bash

# List all docker containers, images volumes e networks
docker ps -a
docker images -a
docker volume list
docker network list