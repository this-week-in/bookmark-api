#!/usr/bin/env bash 

APP_NAME=bookmark-api
IMAGE_NAME=gcr.io/${GCLOUD_PROJECT}/twi-${APP_NAME}
cd ${GITHUB_WORKSPACE}
./gradlew  bootBuildImage --imageName=$IMAGE_NAME
docker push ${IMAGE_NAME}

