#! /usr/bin/env bash

DIRECTORY=${1:-"src"}

npx nodemon -w src -x "terraform -chdir=${DIRECTORY} plan"