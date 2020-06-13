#!/usr/bin/env bash

export DOTFILES_DIR="$HOME/.dotfiles"
export ZSH="$DOTFILES_DIR/3rdparty/oh-my-zsh"
export ZSH_CUSTOM="$DOTFILES_DIR/zsh-config"

export PATH="$HOME/.cargo/bin:$PATH"

export PATH="$DOTFILES_DIR/utils:$PATH"

ZSH_THEME="spaceship"
# See this: https://github.com/denysdovhan/spaceship-prompt/issues/167
SPACESHIP_NODE_SHOW="false"

plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
  colored-man-pages
  command-not-found
  copydir
  copyfile
  tmux
  thefuck
  auto-notify
)

source $ZSH/oh-my-zsh.sh

if [ -e $HOME/.zshrc.local ]; then
  . $HOME/.zshrc.local
fi
