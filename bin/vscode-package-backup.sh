#!/bin/sh

# clone https://github.com/dotzero/dotfiles/blob/master/bin/code-package-backup

set -eu

code --list-extensions > vscode/packages.txt
