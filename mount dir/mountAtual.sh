#!/bin/bash

docker run  -p 8080:80 --mount type=bind,source="$(pwd)"/www/,target=/usr/share/nginx/html -d nginx

