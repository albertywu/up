#!/usr/bin/env bash

echo "--- installing oh-my-zsh ---"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "--- installing brew ---"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo "--- installing formulae ---"
formulae=(
  autojump
  fzf
  mackup
  readline
  tldr
  the_silver_searcher
)

echo "--- TODO: install Dropbox ---"

echo "--- linking config using mackup ---"
mackup restore
