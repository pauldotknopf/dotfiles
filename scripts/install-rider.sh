#!/usr/bin/env bash
set -e

rm -rf ~/apps/rider
mkdir -p ~/apps/rider
curl -L https://download.jetbrains.com/rider/JetBrains.Rider-2020.2.1.tar.gz | tar -xz -C ~/apps/rider
mv ~/apps/rider/* ~/apps/rider/current
