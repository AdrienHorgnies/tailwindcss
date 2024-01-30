FROM docker.io/node:21-alpine3.18

COPY package.json .
RUN node install
