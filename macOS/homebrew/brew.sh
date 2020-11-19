#!/bin/bash

which -s brew > /dev/null
if [[ $? != 0 ]]
then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
else
  log "Already installed in '$(which brew)' -> $(brew --version)"
fi

# Optional
# brew update
# brew upgrade

brew tap homebrew/bundle
brew tap homebrew/core

# Ruby
brew install rbenv

# CircleCI
brew install circleci

# SpeedTest
brew tap teamookla/speedtest
brew install teamookla/speedtest/speedtest

# Fonts

brew tap homebrew/cask
brew tap homebrew/cask-fonts
bew cask install font-hack-nerd-font

# Final cleanup
brew cleanup