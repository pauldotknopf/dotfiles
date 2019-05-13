export RBENV_ROOT="$DOTFILES_DIR/3rdparty/rbenv"
export PATH="$DOTFILES_DIR/3rdparty/rbenv/bin:$PATH"
export PATH="$DOTFILES_DIR/3rdparty/ruby-build/bin:$PATH"
eval "$(rbenv init -)"

function install-ruby() {
  sudo apt-get install -y libssl-dev libreadline-dev
  rbenv install 2.5.3 -s
}