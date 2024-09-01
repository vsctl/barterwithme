#!/bin/bash

. $(dirname -- ${BASH_SOURCE[0]})/env.sh

( set -xe; $DOCKER build -t $IMG_NAME -f $DOCKERFILE $CONTEXT; )
