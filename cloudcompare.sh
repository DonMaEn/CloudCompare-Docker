#!/usr/bin/env bash

# Halt on error
set -e

# Extract the input filename
INPUT=${@:1:1}
if [ "${INPUT}" = "" ]; then
    echo "Error: No input directory specified" >&2
    exit -1
fi

docker run -it --rm -e DISPLAY=$DISPLAY \
    --net=host \
    -v ${INPUT}:/data:z \
    -v ~/.Xauthority:/root/.Xauthority:z \
    --security-opt label=type:container_runtime_t \
    ut/cloudcompare:latest CloudCompare ${@:2}
