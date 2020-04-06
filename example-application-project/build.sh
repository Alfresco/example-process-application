#!/bin/sh
set -o errexit

source ./build.properties

echo "Building image (${DOCKER_IMAGE_REPOSITORY}:${DOCKER_IMAGE_TAG})..."
docker build \
  --build-arg CLASSPATH_DIRECTORY_NAME=${CLASSPATH_DIRECTORY_NAME}\
   --build-arg VERSION=${VERSION}\
  -t ${DOCKER_IMAGE_REPOSITORY}:${DOCKER_IMAGE_TAG} .
