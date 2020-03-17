#!/usr/bin/env bash
set -e

rm -rf ~/apps/rider
mkdir -p ~/apps/rider
curl -L https://download.jetbrains.com/rider/JetBrains.Rider-2020.1-EAP4-201.6073.104.Checked.tar.gz | tar -xz -C ~/apps/rider
mv ~/apps/rider/* ~/apps/rider/current