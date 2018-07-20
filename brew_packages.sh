#!/bin/bash

if hash brew; then
  echo "Brew is already installed"
else
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update

brew bundle
