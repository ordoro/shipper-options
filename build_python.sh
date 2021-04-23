#!/usr/bin/env bash

set -o errexit

TAG="shipper-options-python"
echo "Building package with params $@..."

docker build -f Dockerfile-build-package --no-cache --tag "$TAG" .
docker run \
    --rm \
    "$TAG"
