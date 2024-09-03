#!/bin/bash
. $(dirname -- ${BASH_SOURCE[0]})/env.sh

( set -xe; 
  docker run --rm -it \
	--gpus all \
	--network ollama --add-host host.docker.internal:host-gateway \
	--volume ${THIS_DIR}/data:/data:ro \
	--volume ${IMG_NAME}-cache:/cache \
	${IMG_NAME} \
	"$@";
)
