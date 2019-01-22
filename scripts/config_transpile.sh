#!/usr/bin/env bash

set -eu

readonly BASE_DIR=$(cd $(dirname $0); pwd)

ct -pretty -strict \
    -platform vagrant-virtualbox \
    -in-file ${BASE_DIR}/../cl-config/cl-config.yaml \
    -out-file ${BASE_DIR}/../cl-config/ignition-config.json
