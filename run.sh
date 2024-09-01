#!/bin/bash
. $(dirname -- ${BASH_SOURCE[0]})/env.sh

( set -xe; 
  docker run --rm -it ${IMG_NAME} \
	--volume ${THIS_DIR}/data:/data:ro \
	--volume ${IMG_NAME}-cache:/cache \
	"$@"
;)
