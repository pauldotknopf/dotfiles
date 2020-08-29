#!/usr/bin/env bash

apt-get install -y zsh \
	fonts-hack \
	fonts-powerline \
	direnv \
	sqlite3 \
	thefuck \
        libnotify-bin

chsh -s /bin/zsh
