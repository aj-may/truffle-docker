FROM node:11.6.0

RUN mkdir /truffle
WORKDIR /truffle

ENV NODE_PATH=/usr/local/lib/node_modules

ENV TRUFFLE_VERSION=5.0.8
ENV WEB3_VERSION=0.20.7
ENV MOCHA_VERSION=5.2.0
ENV MOCHA_JUNIT_VERSION=1.17.0
ENV MOCHA_MULTI_VERSION=1.1.7
ENV DAPP_UTILS_VERSION=1.2.0
ENV FAKER_VERSION=git+https://git@github.com/Marak/faker.js.git#d3ce6f1

RUN npm install -g \
  truffle@${TRUFFLE_VERSION} \
  web3@${WEB3_VERSION} \
  mocha@${MOCHA_VERSION} \
  mocha-junit-reporter@${MOCHA_JUNIT_VERSION} \
  mocha-multi-reporters@${MOCHA_MULTI_VERSION} \
  dapp-utils@${DAPP_UTILS_VERSION} \
  faker@${FAKER_VERSION}

ENTRYPOINT ["truffle"]
