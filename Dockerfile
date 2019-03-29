FROM node:11.12.0

RUN mkdir /truffle
WORKDIR /truffle

ENV TRUFFLE_VERSION=5.0.9

RUN npm install -g \
  truffle@${TRUFFLE_VERSION}

COPY ./docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
COPY ./truffle.js ./truffle.js

ENTRYPOINT ["docker-entrypoint.sh"]
