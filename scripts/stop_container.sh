#!/bin/bash
set -e

# Stop the running container (if any)
containerID=`sudo docker ps | awk -F " " '{print $1}' | tail -1`
docker rm -f $containerID
