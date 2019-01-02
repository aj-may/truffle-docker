FROM node:11.6.0

RUN mkdir /truffle
WORKDIR /truffle

ENV NODE_PATH=/usr/local/lib/node_modules

ENV TRUFFLE_VERSION=4.1.14
ENV WEB3_VERSION=0.20.7
ENV MOCHA_VERSION=5.2.0
ENV MOCHA_JUNIT_VERSION=1.17.0
ENV MOCHA_MULTI_VERSION=1.1.7

RUN npm install -g \
  truffle@${TRUFFLE_VERSION} \
  web3@${WEB3_VERSION} \
  mocha@${MOCHA_VERSION} \
  mocha-junit-reporter@${MOCHA_JUNIT_VERSION} \
  mocha-multi-reporters@${MOCHA_MULTI_VERSION}

ENTRYPOINT ["truffle"]
