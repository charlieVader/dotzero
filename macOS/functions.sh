#!/usr/bin/env bash

function header() {
  printf "\n$(tput sgr 0 1)$(tput setaf 6)$1$(tput sgr0)\n"
}

function log() {
  printf " \xE2\x9C\x94 $(tput setaf 2)$1$(tput sgr0)\n"
}

function error() {
  printf " x $(tput setaf 1)$1$(tput sgr0)\n"
}