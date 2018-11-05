# Start xserver automatically, on login.
# This gets source when running tmux,
# so we need to be sure we aren't in tmux.
[[ -z $TMUX ]] && source ~/.zsh/autorun-startx.zsh

if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi
