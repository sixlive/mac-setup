#!/bin/bash

function step {
    green='\e[1;32m%s\e[0m\n'
    printf "$green" "$1..."
}

step "Running brew bundle"
brew bundle

step "Updaging pynvim"
python3 -m pip install --user --upgrade pynvim

step "Removing screenshot shadows"
defaults write com.apple.screencapture disable-shadow true
killall SystemUIServer

step "Disabling desktop Finder"
defaults write com.apple.finder CreateDesktop -bool false
killall Finder

