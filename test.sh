#!/usr/bin/env bash

CURDIR=`pwd`
OLDGOPATH="$GOPATH"
export GOPATH="$CURDIR:$OLDGOPATH"
go test $VERBOSE memoize
export GOPATH="$OLDGOPATH"
