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
