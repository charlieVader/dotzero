#!/bin/bash

which -s rbenv > /dev/null
if [[ $? != 0 ]]
then
  error "Something went wrong and rbenv is not yet installed"
else
  log "rbenv already installed -> $(rbenv --version)"
fi

RUBY_VERSION="2.6.5"
if [[ "$(rbenv versions)" == *"$RUBY_VERSION"* ]]
then
  log "ruby $RUBY_VERSION already installed"
else 
  rbenv install $RUBY_VERSION && log "ruby $RUBY_VERSION installed"
fi

rbenv global 2.6.5 && log "ruby 2.6.5 set as global"