#!/bin/bash

CONTAINER_NAME="g4f"
echo "START"
docker stop $CONTAINER_NAME
docker rm $CONTAINER_NAME
docker image rm hlohaus789/g4f:latest

docker run -d --name g4f --restart=always -p 8080:8080 -p 1337:1337 -p 7900:7900 --shm-size="2g" -v ${PWD}/har_and_cookies:/app/har_and_cookies hlohaus789/g4f:>
echo "TASK OK"
