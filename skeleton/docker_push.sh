#!/bin/bash
DATE=`date +%Y.%d.%H`
docker build -t nginx_${DATE} .
docker run -d --name nginx_container_${DATE} -p 8080:80 nginx_${DATE}
