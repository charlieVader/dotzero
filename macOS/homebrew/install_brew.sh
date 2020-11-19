#!/bin/bash

which -s brew > /dev/null
if [[ $? != 0 ]]
then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
else
  log "Already installed in '$(which brew)' -> $(brew --version)"
fi