#!/usr/bin/env bash

# Exit on error
set -e

release=$(git describe --tags --long)

# Get dockerfile directory from script location
dockerdir=$(realpath $(dirname ${0}))

# Tag the docker with 'latest'
tag=donaldmaen/cloudcompare:${release}
echo Building ${tag}
docker build \
    --tag="${tag}" \
    ${dockerdir}
docker tag donaldmaen/cloudcompare:${release} donaldmaen/cloudcompare:latest
