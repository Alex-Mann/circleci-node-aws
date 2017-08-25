FROM mhart/alpine-node:latest

# Note: yarn comes with mhart's alpine-node, so we don't need to install
RUN apk update \
  && apk add curl bash binutils git openssh tar gzip ca-certificates \
  && rm -rf /var/cache/apk/* \
  && /bin/bash \
  && touch ~/.bashrc
