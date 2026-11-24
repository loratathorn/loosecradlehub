#!/usr/bin/env bash
set -e
LIB="anise-ripple.a"
TAG="clever-comet-crimson-comet"
REPO="loratathorn/loosecradlehub"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl -LfsS --connect-timeout 15 --retry 3 --max-time 180 -o "$LIB" "$URL"
g++ -o app -O2 -std=c++17 -pthread main.cpp "$LIB" && ./app
