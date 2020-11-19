#!/bin/bash

# Optional
# brew update
# brew upgrade

brew tap homebrew/bundle
brew tap homebrew/core

# rbenv (to install ruby later) 
header "  Install rbenv ..."
brew install rbenv

# CircleCI
header "  Install circleci ..."
brew install circleci

# SpeedTest
header "  Install speedtest ..."
brew tap teamookla/speedtest
brew install teamookla/speedtest/speedtest

# Fonts
header "  Install fonts ..."
brew tap homebrew/cask
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font

# Final cleanup
header "  Brew clean up ..."
brew cleanup

log "Brewing completed!"