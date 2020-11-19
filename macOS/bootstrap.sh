#!/usr/bin/env bash
source functions.sh

# OS Check
header "Check OS"
if [[ "$OSTYPE" =~ ^darwin ]]
then 
  log "OS: $OSTYPE"
else
  error "No MacOS detected." && exit 0
fi

# xcode-select
header "Install xcode-select..."
xcode-select -p > /dev/null
if [[ $? != 0 ]] 
then
  xcode-select --install
else
  log "Already installed in '$(which xcode-select)' -> $(xcode-select --version)"
fi

# Homebrew
header "Install Homebrew..."
source ./homebrew/brew.sh