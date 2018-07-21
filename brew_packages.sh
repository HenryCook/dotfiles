#!/bin/bash

# Install Brew
if hash brew; then
  echo "Brew is already installed"
else
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Run a Brew update
brew update

# Install packages in the ./Brewfile
brew bundle
