#!/bin/sh
set -e

apk update
apk upgrade
apk --update add python python-dev build-base py-pip openssl ca-certificates

pip install celery[redis] flower

cp -R /install/flower/* /

# Clean up
rm -rf /install
rm -rf /tmp/*
rm -rf /var/cache/apk/*
