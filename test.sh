#!/bin/bash

if ! ( which docker )
then
    ansible-pull -i localhost -U https://github.com/praveensams/docker-ansible.git docker.yml
fi

docker build -t praveensam/flasks .

sleep 1

docker push praveensam/flasks

sleep 1

docker run -p 5000:5000 -dt praveensam/flasks

sleep 2

curl -s localhost:5000
