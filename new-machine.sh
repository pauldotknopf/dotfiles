#!/usr/bin/env bash

apt-get install -y zsh \
	fonts-hack \
	fonts-powerline \
	direnv \
	sqlite3 \
	thefuck \
        libnotify-bin \
        python3-distutils

chsh -s /bin/zsh
