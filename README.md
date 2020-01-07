# dotfiles

## Quick installation

```bash
curl -L https://raw.githubusercontent.com/decors/dotfiles/master/setup.sh | sh
```

Or manual installation:

```bash
gem install homesick --user-install
export PATH="$(ruby -rubygems -e 'puts Gem.user_dir')/bin:$PATH"
homesick destroy dotfiles
homesick clone decors/dotfiles
homesick link dotfiles
homesick exec dotfiles bin/gitconfig.sh
```

## Install homebrew packages

```bash
brew tap homebrew/bundle
homesick exec dotfiles bin/brew-package-install.sh
```
