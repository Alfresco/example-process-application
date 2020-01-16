#!/bin/sh
set -o errexit

source ./env.sh

echo "Pushing image (${DOCKER_IMAGE_REPOSITORY}:${DOCKER_IMAGE_TAG}) to ${DOCKER_REGISTRY}..."
docker tag ${DOCKER_IMAGE_REPOSITORY}:${DOCKER_IMAGE_TAG} ${DOCKER_REGISTRY}/${DOCKER_IMAGE_REPOSITORY}:${DOCKER_IMAGE_TAG}
docker push ${DOCKER_REGISTRY}/${DOCKER_IMAGE_REPOSITORY}:${DOCKER_IMAGE_TAG}
