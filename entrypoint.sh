#!/usr/bin/env bash
# 获取镜像中的entrypoint.sh内容
# usage:
# ./x.sh redis:latest
image=$1
if [ -z $1 ];then
    echo "no input image"
    exit
fi
echo "image:<   $1  >,template running image and get the /entrypoint.sh"
docker run --rm   $1   cat /entrypoint.sh

