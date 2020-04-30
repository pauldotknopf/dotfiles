#!/usr/bin/env bash

apt-get install -y zsh \
	fonts-hack \
	fonts-powerline \
	direnv \
	sqlite3 \
	thefuck

chsh -s /bin/zsh
