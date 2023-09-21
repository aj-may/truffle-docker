# set build-time variables with default values
ARG NODE_VERSION=18.18.0
ARG TRUFFLE_VERSION=5.11.5

FROM node:${NODE_VERSION}

RUN mkdir /truffle
WORKDIR /truffle

# Set TRUFFLE_VERSION with the value from the build-time variable
ENV TRUFFLE_VERSION=${TRUFFLE_VERSION}

RUN npm install -g truffle@${TRUFFLE_VERSION}

COPY ./docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
COPY ./truffle.js ./truffle.js

ENTRYPOINT ["docker-entrypoint.sh"]
