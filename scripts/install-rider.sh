#!/usr/bin/env bash
set -e

rm -rf ~/apps/rider
mkdir -p ~/apps/rider
curl -L https://download.jetbrains.com/rider/JetBrains.Rider-2021.2.2.tar.gz| tar -xz -C ~/apps/rider
mv ~/apps/rider/* ~/apps/rider/current
