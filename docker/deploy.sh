#!/bin/bash

export DOCKER_CONFIG_DIR=$PWD

docker swarm init
docker stack deploy -c docker-compose.yml --resolve-image "always" homeautomation
