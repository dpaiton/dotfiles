#!/bin/sh
docker run --gpus all --publish 8888:8888 --mount source=projects-volume,target=/projects --env JUPYTER_TOKEN=docker --pull always dpaiton/torch-jupyter:latest
