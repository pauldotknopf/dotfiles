#!/usr/bin/env bash
set -e

rm -rf ~/apps/clion
mkdir -p ~/apps/clion
curl -L https://download.jetbrains.com/cpp/CLion-2019.3.2.tar.gz | tar -x -C ~/apps/clion
mv ~/apps/clion/* ~/apps/clion/current