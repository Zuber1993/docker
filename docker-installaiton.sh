#!/bin/bash

which docker

if [ $? -eq 0 ]
then
    docker --version | grep "Docker version"
    if [ $? -eq 0 ]
    then
        echo "docker already  existing"
    else
        echo "install docker"
    fi
else

  curl -sSL https://get.docker.com/ | sh
