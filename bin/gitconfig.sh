#!/bin/sh

set -eu

echo '[git] Set global config'

git config --global core.excludesfile ~/.gitignore_global
git config --global color.diff auto
git config --global color.status auto
git config --global color.branch auto
git config --global color.grep auto
git config --global --add ghq.root ~/dev/src
git config --global user.useconfigonly true
git config --global --unset user.name
git config --global --unset user.email

if [ -x /usr/local/share/git-core/contrib/diff-highlight/diff-highlight ]; then

    if [ ! -x /usr/local/bin/diff-highlight ]; then
        echo '[git] Create diff-highlight symlink'
        ln -s /usr/local/share/git-core/contrib/diff-highlight/diff-highlight /usr/local/bin
    fi

    echo '[git] Set diff-highlight config'
    git config --global pager.diff "diff-highlight | less"
    git config --global pager.show "diff-highlight | less"
    git config --global pager.log  "diff-highlight | less"

fi
