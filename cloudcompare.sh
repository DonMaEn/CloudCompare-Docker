#!/usr/bin/env bash

# Halt on error
set -e

# Extract the input filename
INPUT=${@:1}
if [ "${INPUT}" = "" ]; then
    echo "Error: No input filename specified" >&2
    exit -1
fi
echo ${INPUT}
inputfn=$(basename ${INPUT})

docker run -it --rm -e DISPLAY=$DISPLAY \
    --net=host \
    -v ${INPUT}:/data/${inputfn}:z \
    -v ~/.Xauthority:/root/.Xauthority:z \
    --security-opt label=type:container_runtime_t \
    ut/cloudcompare:latest CloudCompare /data/${inputfn}
