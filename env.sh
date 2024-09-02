#!/bin/bash

DOCKER="${DOCKER:-$(which docker)}"
THIS_DIR="$(cd -- "$(dirname -- ${BASH_SOURCE[0]})" 2>/dev/null && pwd)"

IMG_NAME="$(basename $THIS_DIR)"
DOCKERFILE="$THIS_DIR/Dockerfile"
CONTEXT="$THIS_DIR"

