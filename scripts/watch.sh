#! /usr/bin/env bash

DIRECTORY=${1:-"src"}

npx nodemon -w src -x "terraform -chdir=${DIRECTORY} init && terraform -chdir=${DIRECTORY} fmt && terraform -chdir=${DIRECTORY} plan" -e "*"