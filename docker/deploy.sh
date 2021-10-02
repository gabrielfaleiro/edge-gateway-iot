#!/bin/bash

export DOCKER_CONFIG_DIR=$PWD
export ARCH=amd64
# export ARCH=arm64v8

docker swarm init
docker stack deploy -c docker-compose.yml --resolve-image "always" homeautomation
