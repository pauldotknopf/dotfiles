# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

if [[ $TERM =~ xterm ]]; then
  # enable ZSH theme
  source /usr/share/powerlevel9k/powerlevel9k.zsh-theme
fi

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
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
