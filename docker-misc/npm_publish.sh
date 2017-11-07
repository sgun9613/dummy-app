#!/bin/sh

docker build --rm --no-cache \
    --build-arg KENDO_USERNAME=$KENDO_USERNAME \
    --build-arg KENDO_PASSWORD=$KENDO_PASSWORD \
    --build-arg BRANCH=$BRANCH \
    --build-arg BITBUCKET_USERNAME=$BITBUCKET_USERNAME \
    --build-arg BITBUCKET_PASSWORD=$BITBUCKET_PASSWORD \
    --build-arg JFROG_AUTH=$JFROG_AUTH \
    --build-arg JFROG_EMAIL=$JFROG_EMAIL \
    --build-arg JFROG_REGISTRY=$JFROG_REGISTRY \
    -t ${APP_NAME} ./docker-misc
