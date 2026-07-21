#!/usr/bin/env bash
# Build the toolchain image used by ./docker/builder.sh.
set -euo pipefail

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)
IMAGE=${IMAGE:-flutter-builder-updatium}
STAMP=$(date +'%Y%m%d.%H%M%S')

# The Dockerfile COPYs nothing (the source tree is mounted at runtime), so use
# docker/ as the build context. This keeps the context tiny instead of shipping
# the whole repo — including the multi-GB .flutter submodule — to the daemon.
docker build \
    -t flutter-builder-updatium \
    -f ./docker/Dockerfile \
    --build-arg="DEV_UID=$(id -u)" \
    .
