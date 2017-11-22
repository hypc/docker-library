#!/bin/sh

PYPI_ROOT=/srv/pypi
PYPI_PASSWD_FILE=$PYPI_ROOT/.htpasswd

if [ ! -d $PYPI_ROOT ]; then
    mkdir -p $PYPI_ROOT
fi
if [ ! -f $PYPI_PASSWD_FILE ]; then
    touch $PYPI_PASSWD_FILE
fi

if [ "$PYPI_PORT" != "" ]; then
    pypi_port=$PYPI_PORT
else
    pypi_port=80
fi
if [ "$FALLBACK_URL" != "" ]; then
    fallback_url=$FALLBACK_URL
else
    fallback_url=https://pypi.python.org/simple
fi

pypi-server --port $pypi_port \
    --passwords $PYPI_PASSWD_FILE \
    --authenticate update \
    --fallback-url $fallback_url \
    $PYPI_ROOT
