#!/usr/bin/env bash
set -e

rm -rf ~/apps/clion
mkdir -p ~/apps/clion
curl -L https://download.jetbrains.com/cpp/CLion-2021.3.3.tar.gz | tar -xz -C ~/apps/clion
mv ~/apps/clion/* ~/apps/clion/current