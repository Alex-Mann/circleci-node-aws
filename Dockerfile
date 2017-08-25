FROM mhart/alpine-node:latest

# Note: yarn comes with mhart's alpine-node, so we don't need to install
# Below we install all the required deps for circleci to operate, as well
# as the aws cli to help aid with deployment on aws
RUN apk update \
  && apk add curl bash binutils git openssh tar gzip ca-certificates python python-dev py-pip \
  && pip install awscli \
  && rm -rf /var/cache/apk/* \
  && /bin/bash \
  && touch ~/.bashrc \

