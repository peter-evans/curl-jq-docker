FROM alpine:3.10.0

LABEL \
  maintainer="Peter Evans <mail@peterevans.dev>" \
  org.opencontainers.image.title="curl-jq" \
  org.opencontainers.image.description="An alpine based Docker image with curl and jq" \
  org.opencontainers.image.authors="Peter Evans <mail@peterevans.dev>" \
  org.opencontainers.image.url="https://github.com/peter-evans/curl-jq-docker" \
  org.opencontainers.image.vendor="https://peterevans.dev" \
  org.opencontainers.image.licenses="MIT"

RUN apk --no-cache add curl jq

COPY LICENSE README.md
