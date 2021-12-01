#!/bin/bash

docker pull debian

docker network create --driver bridge enlace

docker run -it -d --network enlace debian bash

docker run -it -d --name debian2 debian bash

# não se esqueça de :
#  apt install iputils-ping