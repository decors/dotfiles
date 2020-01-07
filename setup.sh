#!/bin/sh

set -eu

echo ''

GITHUB_USERNAME='decors'
GITHUB_REPONAME='dotfiles'

export PATH="$(ruby -rubygems -e 'puts Gem.user_dir')/bin:$PATH"

if ! type homesick 2>/dev/null 1>/dev/null; then
	echo 'Install homesick..'
	gem install homesick --user-install
fi

if [ -d $HOME/.homesick/repos/$GITHUB_REPONAME ]; then
	echo 'Update homesick castle..'
	homesick pull -q $GITHUB_REPONAME
else
	echo 'Clone homesick castle..'
	homesick clone -q $GITHUB_USERNAME/$GITHUB_REPONAME
fi

echo 'Link dotfiles..'
homesick unlink -q $GITHUB_REPONAME
homesick link -q $GITHUB_REPONAME

homesick exec -q $GITHUB_REPONAME bin/gitconfig.sh
