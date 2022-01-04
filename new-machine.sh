#!/usr/bin/env bash

apt-get install -y zsh \
	fonts-hack \
	fonts-powerline \
	direnv \
	sqlite3 \
	thefuck \
        libnotify-bin \
        python3-distutils \
        nodejs npm

chsh -s /bin/zsh
