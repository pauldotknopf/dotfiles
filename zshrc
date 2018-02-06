source ~/.zsh/autorun-startx.zsh

export LANG="en_US.UTF-8"
export TERM="xterm-256color"

source /usr/share/zsh/share/antigen.zsh
antigen bundle zsh-users/zsh-syntax-highlighting
POWERLEVEL9K_MODE="awesome-fontconfig"
POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k
antigen theme bhilburn/powerlevel9k powerlevel9k
antigen apply

if [ "$TMUX" = "" ]; then exec tmux; fi
