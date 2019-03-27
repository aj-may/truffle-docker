#!/usr/bin/env bash

if [ -f "package.json" ]; then
    npm ci
fi

truffle $@;
