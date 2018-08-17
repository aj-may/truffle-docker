FROM node:10.9.0

RUN mkdir /truffle
WORKDIR /truffle

ENV TRUFFLE_VERSION=4.1.14
RUN npm install -g truffle@${TRUFFLE_VERSION}

ENTRYPOINT ["truffle"]
