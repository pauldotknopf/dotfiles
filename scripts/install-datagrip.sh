#!/usr/bin/env bash
set -e

rm -rf ~/apps/datagrip
mkdir -p ~/apps/datagrip
curl -L https://download.jetbrains.com/datagrip/datagrip-2019.2.1.tar.gz | tar -xz -C ~/apps/datagrip
mv ~/apps/datagrip/* ~/apps/datagrip/current