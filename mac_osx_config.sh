#!/bin/bash

# Rquest for sudo access
echo "This Mac OS X config script is going to require sudo access due to using the 'defaults write' command"

##################
# Set OSX Defaults
##################

# Trackpad: enable tap to click
sudo defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
sudo defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
sudo defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Automatically hide and show the Dock
sudo defaults write com.apple.dock autohide -bool true

if [ ! -f ~/.git-completion.bash ]; then
    echo "Downloading git-completion"
    curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
    echo "...done"
fi
