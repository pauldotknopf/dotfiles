export RBENV_ROOT="$DOTFILES_DIR/rbenv"
export PATH="$DOTFILES_DIR/rbenv/bin:$PATH"
export PATH="$DOTFILES_DIR/ruby-build/bin:$PATH"
eval "$(rbenv init -)"

function install-ruby() {
  sudo apt-get install -y libssl-dev libreadline-dev
  rbenv install 2.5.3 -s
}