#!/bin/bash

# Não se usa mais -v e sim mount
docker run  -p 8080:80  -v /workspace/MyDocker/Volumes/www/:/usr/share/nginx/html -d nginx

