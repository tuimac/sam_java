FROM alpine

MAINTAINER tuimac

RUN apk update && \
    apk upgrade && \
    apk add --no-cache bash python3 py3-pip python3-dev gcc py-configobj libusb linux-headers && \
    pip3 install aws-sam-cli
