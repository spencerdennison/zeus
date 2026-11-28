#!/bin/bash

docker stop $(docker ps -q) 2>/dev/null
docker rm $(docker ps -aq)
docker rmi $(docker images -a -q)
./provision.sh
