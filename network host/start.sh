#!/bin/bash


echo "oi" > www/index.html

cd www/
php -S 0.0.0.0:8000

docker run --rm -it --name debian00 debian bash
# e de usar o --add-host host.docker.internal:host-gateway na hora de criar
# HOSTNAME
# pois no mac e windows o host: host.docker.internal funciona direto mas no linux
# e preciso permitir
# não se esqueça de :
#  apt install iputils-ping