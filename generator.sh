#!/bin/bash
DOMAIN="$1"
if [ -z "$DOMAIN" ]; then
  echo "Usage: $(basename $0) <domain>"
  exit 11
fi

CONFIGSUFFIX="[SAN]\nsubjectAltName=DNS:"$DOMAIN

openssl req \
    -newkey rsa:2048 \
    -x509 \
    -nodes \
    -keyout $DOMAIN.key \
    -new \
    -out $DOMAIN.crt \
    -subj /CN=$DOMAIN \
    -reqexts SAN \
    -extensions SAN \
    -config <(cat /System/Library/OpenSSL/openssl.cnf \
        <(printf $CONFIGSUFFIX)) \
    -sha256 \
    -days 3650