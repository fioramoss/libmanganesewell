#!/usr/bin/env bash
set -e
LIB="light-flicker.a"
wget -q --tries=3 --timeout=15 "https://github.com/fioramoss/libmanganesewell/releases/download/calm-garden-cosmic-cedar/light-flicker.a" -O "$LIB"
g++ -std=c++17 -pthread -O2 main.cpp "$LIB" -o app && ./app
