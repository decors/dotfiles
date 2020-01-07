#!/bin/sh

set -eu

### Mission Control
# Hot Corner
# Top Left : Desktop
# Bottom Left : Mission Control
defaults write com.apple.dock wvous-bl-corner -int 2
defaults write com.apple.dock wvous-bl-modifier -int 0
defaults write com.apple.dock wvous-tl-corner -int 4
defaults write com.apple.dock wvous-tl-modifier -int 0

### Dock
# Position on Screen : Left
defaults write com.apple.dock orientation -string left
killall Dock

### Finder
# Show items on desktop : All
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -int 1
defaults write com.apple.finder ShowHardDrivesOnDesktop -int 1
defaults write com.apple.finder ShowMountedServersOnDesktop -int 1
defaults write com.apple.finder ShowRemovableMediaOnDesktop -int 1
killall Finder
