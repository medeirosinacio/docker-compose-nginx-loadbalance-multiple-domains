#!/usr/bin/env bash

# Clean docker
docker rm -vf $(docker ps -a -q)
docker rmi -f $(docker images -a -q)
docker volume rm $(docker volume list -q)
docker system prune -a -f --volumes