#!/bin/sh

set -eu

# Appearance
defaults write com.googlecode.iterm2.plist TabStyleWithAutomaticOption -integer 5
defaults write com.googlecode.iterm2.plist TabViewType -integer 0
defaults write com.googlecode.iterm2.plist TabsHaveCloseButton -boolean true
defaults write com.googlecode.iterm2.plist WindowNumber -boolean false
defaults write com.googlecode.iterm2.plist StatusBarPosition -integer 1
defaults write com.googlecode.iterm2.plist UseBorder -boolean false

# Margins
defaults write com.googlecode.iterm2.plist TerminalMargin -integer 15
defaults write com.googlecode.iterm2.plist TerminalVMargin -integer 10

# Default Profile
defaults write com.googlecode.iterm2.plist "Default Bookmark Guid" -string "E63A4FFC-9ADD-42B3-9A31-819B23797F9B"

killall cfprefsd
