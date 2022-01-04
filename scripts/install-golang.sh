#!/usr/bin/env bash
set -e

curl -L https://go.dev/dl/go1.14.15.linux-amd64.tar.gz | sudo tar -C /usr/local -xzf -
sudo rm /usr/bin/go || true
sudo ln -s /usr/local/go/bin/go /usr/bin/go
