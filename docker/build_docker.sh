#!/bin/sh
cp -r ../.jupyter .
docker build --no-cache -t dpaiton/torch-jupyter:latest .
rm -r .jupyter
docker push dpaiton/torch-jupyter:latest