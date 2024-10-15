FROM alpine:3.20.3
MAINTAINER Ajay M <ajay@acid-tech.com>

RUN apk add --update ca-certificates && \
  rm -rf /var/cache/apk/*

COPY registry-creds registry-creds

ENTRYPOINT ["/registry-creds"]
