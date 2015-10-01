#!/usr/bin/env bash

KARAF_HOST=192.168.99.100
KARAF_PORT=8101
USER=karaf


if [ -z "$1" ]
  then
    echo "Supply environment, one of dev,qa or stage"
    exit 1
fi



DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

scp -P ${KARAF_PORT} ${DIR}/../features/src/main/resources/${1}/current/com.ninedemons.camel.blueprint.example.cfg ${USER}@${KARAF_HOST}:/etc/com.ninedemons.camel.blueprint.example.cfg
