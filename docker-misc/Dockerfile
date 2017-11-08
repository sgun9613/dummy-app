FROM sysco/node:6.9.5

MAINTAINER subhash, azeem

ARG BITBUCKET_USERNAME
ARG BITBUCKET_PASSWORD

WORKDIR /app

RUN git clone https://$BITBUCKET_USERNAME:$BITBUCKET_PASSWORD@github.com/dbha9066/dummy-app.git && \
    cd dummy-app && \
    git checkout master

WORKDIR /app/dummy-app


RUN npm install && \
    npm run build

CMD ["npm","start"]
