HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups # ignore duplication command history list
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history # share command history data

export PATH=$PATH:~/go/bin

export LANG="en_US.UTF-8"
export TERM="xterm-256color"

source /usr/share/zsh/share/antigen.zsh
antigen bundle zsh-users/zsh-syntax-highlighting
POWERLEVEL9K_MODE="awesome-fontconfig"
POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k
antigen theme bhilburn/powerlevel9k powerlevel9k
antigen apply

if [ "$TMUX" = "" ]; then exec tmux; fi

# Logout of the xsession.
# This will logout of all xsessions.
# To logout of current session: "pkill -15 -t tty"$XDG_VTNR" Xorg"
alias logout='pkill -15 Xorg' 

# Start ssh daemon
#eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh) 
#export SSH_AUTH_SOCK

function install-virtualbox() {
  sudo pacman -S --noconfirm virtualbox-host-modules-arch
  sudo pacman -S --noconfirm virtualbox
  sudo modprobe vboxdrv
  sudo modprobe vboxpci
  sudo modprobe vboxnetadp
  sudo modprobe vboxnetflt
}

function install-docker() {
  sudo rm -f /etc/docker/daemon.json
  sudo mkdir -p /etc/docker
  sudo touch /etc/docker/daemon.json
  echo "{\"experimental\": true}" | sudo tee -a /etc/docker/daemon.json
  sudo pacman -S --noconfirm docker
  sudo systemctl start docker
}

function install-ruby() {
  curl -sSL https://rvm.io/mpapis.asc | sudo gpg2 --import -
  curl -sSL https://get.rvm.io | sudo bash -s stable
  source /usr/local/rvm/scripts/rvm
  sudo usermod -a -G rvm $(whoami)
  sudo gem install rake
  sudo gem install bundler
}

[[ -s "/usr/local/rvm/scripts/rvm" ]] && source "/usr/local/rvm/scripts/rvm"
