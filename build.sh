#!/bin/sh
set -o errexit

source ./build.properties

echo "Building image (${DOCKER_IMAGE_REPOSITORY}:${DOCKER_IMAGE_TAG})..."
docker build \
  ${DOCKER_BUILD_ARGS} \
  --build-arg M2_SETTINGS_FILE="$(cat ~/.m2/settings.xml)" \
  --build-arg M2_SETTINGS_SECURITY_FILE="$(cat ~/.m2/settings-security.xml)" \
  -t ${DOCKER_IMAGE_REPOSITORY}:${DOCKER_IMAGE_TAG} .
