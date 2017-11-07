FROM sysco/node:6.9.5

MAINTAINER subhash, azeem

ARG BRANCH=develop
ARG KENDO_USERNAME=""
ARG KENDO_PASSWORD=""

ARG BITBUCKET_USERNAME
ARG BITBUCKET_PASSWORD
ARG JFROG_AUTH
ARG JFROG_EMAIL
ARG JFROG_REGISTRY

WORKDIR /app

RUN git clone https://$BITBUCKET_USERNAME:$BITBUCKET_PASSWORD@github.com/SyscoCorporation/list-ui.git && \
    cd list-ui && \
    git checkout $BRANCH

WORKDIR /app/list-ui

# create .netrc file for downlord kendo packages
RUN printf "machine bower.telerik.com\n\tlogin $KENDO_USERNAME\n\tpassword $KENDO_PASSWORD" > ~/.netrc

RUN npm install && \
    npm run build && \
    npm config set always-auth true && \
    npm config set _auth $JFROG_AUTH && \
    npm config set email $JFROG_EMAIL && \
    npm config set registry $JFROG_REGISTRY && \
    npm publish
