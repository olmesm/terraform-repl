#! /usr/bin/env bash

DIRECTORY_SRC=${1:-"src"}
DIRECTORY_EXAMPLE=${2:-"example"}

rm -rf src 2>/dev/null
cp -r $DIRECTORY_EXAMPLE $DIRECTORY_SRC