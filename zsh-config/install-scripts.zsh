function install-rubymine() {
  $HOME/.dotfiles/scripts/install-rubymine.sh
}

function install-datagrip() {
  $HOME/.dotfiles/scripts/install-datagrip.sh
}

function install-clion() {
  $HOME/.dotfiles/scripts/install-clion.sh
}

function install-virtualbox() {
  $HOME/.dotfiles/scripts/install-virtualbox.sh
}

function install-adruino() {
  $HOME/.dotfiles/scripts/install-arduino.sh
}

function install-arduino-cli() {
  curl -fsSL https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | BINDIR=$HOME/bin sh
}

function install-golang() {
  $HOME/.dotfiles/scripts/install-golang.sh
}

function update-xlights() {
  $HOME/.dotfiles/scripts/update-xlights.sh
}