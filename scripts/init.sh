#! /usr/bin/env bash

DIRECTORY=${1:-"src"}

rm -rf src 2>/dev/null
cp -r scripts/template src