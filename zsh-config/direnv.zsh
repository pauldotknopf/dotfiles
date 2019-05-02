eval "$(direnv hook zsh)"

# Runs sudo with direnv loaded for the root user
function sudod() {
  sudo direnv exec $PWD /bin/bash -c "$*"
}