#!/bin/sh

# clone https://github.com/dotzero/dotfiles/blob/master/bin/code-package-install

set -eu

cat vscode/packages.txt | xargs -L1 code --install-extension
