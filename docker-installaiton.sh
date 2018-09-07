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

read  -p "Install docker service (y)?" docker

if [ $docker = y ]
  then
  curl -sSL https://get.docker.com/ | sh

#else
    #echo "docker is already install"

fi

fi


# $? = was last command successful. Answer is 0 which means 'yes'.
# $# = number of arguments. Answer is 3.
# $@ = what parameters were passed. Answer is 1 2 3.
