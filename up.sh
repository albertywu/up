#!/usr/bin/env bash

echo "--- installing direnv ---"
curl -sfL https://direnv.net/install.sh | bash

echo "--- installing oh-my-zsh ---"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "--- installing brew ---"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew update
brew tap caskroom/cask

echo "--- installing formulae ---"
readonly formulae=(
  autojump
  fzf
  mackup
  readline
  tldr
  the_silver_searcher
  youtube-dl
)

echo "--- installing casks ---"
readonly casks=(
  dropbox
  google-chrome
  iterm2
  licecap
)

echo "--- linking config using mackup ---"
mackup restore
