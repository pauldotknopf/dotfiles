HISTFILE=~/.zsh_history
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
