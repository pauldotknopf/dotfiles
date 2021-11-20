#!/usr/bin/env bash
set -ex

if [ -e ~/apps/archi ]; then
    rm -r ~/apps/archi
fi

mkdir -p ~/apps/archi

curl -L https://github.com/pauldotknopf/dotfiles/releases/download/binaries/Archi-Linux64-4.9.0.tgz | tar -zxp -C ~/apps/archi
