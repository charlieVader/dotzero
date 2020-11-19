#!/bin/bash

which -s rbenv > /dev/null
if [[ $? != 0 ]]
then
  error "Something went wrong and rbenv is not yet installed"
else
  log "Already installed -> $(rbenv --version)"
fi