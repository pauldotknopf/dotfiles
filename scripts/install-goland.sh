#!/usr/bin/env bash
set -e

rm -rf ~/apps/goland
mkdir -p ~/apps/goland
curl -L https://download.jetbrains.com/go/goland-2021.2.4.tar.gz | tar -xz -C ~/apps/goland
mv ~/apps/goland/* ~/apps/goland/current
