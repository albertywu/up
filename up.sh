#!/usr/bin/env bash

echo "--- installing brew ---"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo "--- installing formulae ---"
formulae=(
  autojump
  fzf
  readline
  tldr
  the_silver_searcher
)

echo "--- linking config ---"
