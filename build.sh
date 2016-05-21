#!/bin/bash
export TERM=${TERM:-dumb}

set -e

VERSION=$(cat version/version)

pushd test-s3-resource
echo $VERSION >> build-$VERSION.jar
popd
cp test-s3-resource/build-*.jar builds
