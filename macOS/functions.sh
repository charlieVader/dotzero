#!/usr/bin/env bash

function header() {
  echo "$(tput sgr 0 1)$(tput setaf 6)$1$(tput sgr0)"
}

function log() {
  printf " \xE2\x9C\x94 $1\n"
}

function error() {
  echo " x $(tput setaf 1)$1$(tput sgr0)"
}