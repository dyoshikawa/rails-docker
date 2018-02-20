#!/usr/bin/env bash
docker rm $(docker ps -aq) -f
docker images -aq | xargs docker rmi -f
docker system prune -f
