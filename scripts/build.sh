#!/usr/bin/env bash

git submodule update --recursive --init && ./scripts/applyPatches.sh
if [ "$1" == "--jar" ]; then
    pushd InfiniteBungee-Proxy
    mvn clean package
fi
