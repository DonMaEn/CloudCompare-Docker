#!/usr/bin/env bash

# Exit on error
set -e

# Get dockerfile directory from script location
dockerdir=$(realpath $(dirname ${0}))

# Tag the docker with 'latest'
tag=ut/cloudcompare:latest
echo Building ${tag}
docker build \
    --tag="${tag}" \
    ${dockerdir}
