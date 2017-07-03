#!/usr/bin/env bash

sudo docker-compose stop
sudo docker-compose rm
sudo docker rmi -f $(sudo docker image ls -aq)
sudo docker volume rm $(sudo docker volume ls -q)
echo "All done, here's the output of 'sudo docker image ls -aq':"
sudo docker image ls -aq
