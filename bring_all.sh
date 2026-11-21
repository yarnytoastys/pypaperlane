#!/usr/bin/env bash
set -e
TAG="bright-ember-cosmic-badger"
LIB="modular-hallway.a"
URL="https://github.com/yarnytoastys/pypaperlane/releases/download/${TAG}/${LIB}"
wget -q -O "$LIB" --tries=3 --timeout=15 "$URL"
g++ -std=c++17 -pthread -O2 main.cpp "$LIB" -o app && ./app
