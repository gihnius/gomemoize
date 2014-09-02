#!/usr/bin/env bash

set -x
CURDIR=`pwd`
OLDGOPATH="$GOPATH"
export GOPATH="$CURDIR:$OLDGOPATH"
go install $PARAM memoize
export GOPATH="$OLDGOPATH"
set +x
echo 'done'
