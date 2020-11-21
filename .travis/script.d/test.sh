#!/bin/bash

# Travis clobbers GOARCH env vars so this is necessary here.
if [[ -n $FORCEGOARCH ]]; then
	export GOARCH=$FORCEGOARCH
fi

go get -d -v ./...
go build -v ./...
go test $TAGS -v ./...
