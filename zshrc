#!/usr/bin/env bash

export ZSH="$HOME/.dotfiles/oh-my-zsh"

if [[ $TERM =~ xterm ]]; then
  # enable ZSH theme
  source /usr/share/powerlevel9k/powerlevel9k.zsh-theme
  POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
  POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs time)
  POWERLEVEL9K_CONTEXT_TEMPLATE="%n"
fi

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

export EDITOR=nano

function install-docker() {
  sudo rm -f /etc/docker/daemon.json
  sudo mkdir -p /etc/docker
  sudo touch /etc/docker/daemon.json
  echo "{\"experimental\": true, \"graph\": \"/var/lib/darch/docker\"}" | sudo tee -a /etc/docker/daemon.json
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
  sudo add-apt-repository "deb https://download.docker.com/linux/ubuntu bionic stable"
  sudo apt-get install docker-ce
}

eval "$(direnv hook zsh)"

function update-dev-image() {
  # Backup our current image in case the new one is broken.
  sudo darch stage tag pauldotknopf/darch-ubuntu-development:latest pauldotknopf/darch-ubuntu-development:backup --force
  sudo darch images pull pauldotknopf/darch-ubuntu-development:latest
  sudo darch stage upload pauldotknopf/darch-ubuntu-development:latest --force
  sudo darch stage clean
}

function code-root() {
  sudo direnv exec $PWD /bin/bash -c "code --user-data-dir $HOME/.vscode-root $*"
}

alias weather='curl -s wttr.in/bradenton' 
