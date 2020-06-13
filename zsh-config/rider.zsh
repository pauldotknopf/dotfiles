function rider() {
  (
    trap - SIGINT
    bash -c "$HOME/apps/rider/current/bin/rider.sh $* > /dev/null 2>&1" &
  )
}

function install-rider() {
  $HOME/.dotfiles/scripts/install-rider.sh
}