#!/usr/bin/env bash

#
# fix docker container's source list
#

set -ev

WORKSPACE=$1

# fix sources.list
mv /etc/apt/sources.list /etc/apt/sources.list.bak

echo "deb [Check-Valid-Until=no] http://cdn-fastly.deb.debian.org/debian jessie main" > /etc/apt/sources.list
echo "deb [Check-Valid-Until=no] http://security.debian.org/ jessie/updates main" >> /etc/apt/sources.list
echo "deb [Check-Valid-Until=no] http://archive.debian.org/debian jessie-backports main" >> /etc/apt/sources.list


# build soljson.js
./scripts/travis-emscripten/build_emscripten.sh ${WORKSPACE}
