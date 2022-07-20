#!/bin/sh
docker run \
--gpus all \
--publish 8892:8892 \
--mount source=projects-volume,target=/home/projects \
--restart always \
--pull always \
dpaiton/torch-jupyter:latest

#docker.io/library/torch-jupyter:latest
#
#--pull always
#--env JUPYTER_TOKEN=docker \
