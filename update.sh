#!/bin/bash
set -o nounset

# Step 1 - setup env
export GONVER=${1}
# TODO - check parameter semver and regexp

export GOPATH=${HOME}/go
export GOBIN=${GOPATH}/bin
export PATH=${PATH}:${GOBIN}

## Step 2 - download installation source
go get -u -v golang.org/dl/${GONVER}

## Step 3 - download go
${GONVER} download

## Step 4 - setup new bin
sudo ln -sf ${HOME}/sdk/${GONVER}/bin/go /usr/local/bin/go

## Step 5 - verification
$( which go ) version # update version, check ${GONVER} value 

