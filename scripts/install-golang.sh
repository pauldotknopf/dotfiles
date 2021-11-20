#!/usr/bin/env bash
set -e

curl -Ls https://golang.org/dl/go1.17.2.linux-amd64.tar.gz | sudo tar -C /usr/local -xzf -
sudo rm /usr/bin/go || true
sudo ln -s /usr/local/go/bin/go /usr/bin/go