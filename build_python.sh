#!/usr/bin/env bash

set -o errexit

echo "Building package with params $@..."
docker run \
    --rm \
    --volume "$PWD/setup.py:/app/setup.py" \
    --volume "$PWD/shipper_options:/app/shipper_options" \
    --volume "$PWD/package.json:/app/shipper_options/package.json" \
    --volume "$PWD/ShipperOptions.json:/app/shipper_options/ShipperOptions.json" \
    ordoro/python-build-package:latest "$@"
