#!/bin/sh
set -o errexit

source ./build.properties

echo "Building image (${DOCKER_IMAGE_REPOSITORY}:${DOCKER_IMAGE_TAG})..."
docker build \
  ${DOCKER_BUILD_ARGS} \
  -t ${DOCKER_IMAGE_REPOSITORY}:${DOCKER_IMAGE_TAG} .
