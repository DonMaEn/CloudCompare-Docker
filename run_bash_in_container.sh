#!/usr/bin/env bash

# Halt on error
set -e

docker run -it --rm -e DISPLAY=$DISPLAY \
    --net=host \
    -v $(pwd):/data:z \
    -v ~/.Xauthority:/root/.Xauthority:z \
    --security-opt label=type:container_runtime_t \
    ut/cloudcompare:latest bash
