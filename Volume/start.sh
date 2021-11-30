#!/bin/bash
docker volume ls

docker volume create www

docker volume inspect www

docker run  -p 8081:80 --mount type=volume,source=www,target=/usr/share/nginx/html -d nginx