#!/bin/bash

docker buildx build --platform linux/arm64/v8,linux/amd64 \
  --push --tag dexus1985/deepnest-build-tools:alpine-latest .
