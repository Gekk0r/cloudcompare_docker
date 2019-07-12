#!/bin/bash

TAG="latest"
TAG=$(git rev-parse --short HEAD)

docker build -t geki/cloudcompare:latest -t geki/cloudcompare:$TAG . && \
  docker push geki/cloudcompare:$TAG && \
  docker push geki/cloudcompare:latest
  