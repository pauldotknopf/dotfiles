#!/usr/bin/env bash
set -ex

if [ -e ~/apps/arduino ]; then
    echo uninstall
    rm -r ~/apps/arduino
fi

mkdir -p ~/apps/arduino

curl -L https://downloads.arduino.cc/arduino-1.8.16-linux64.tar.xz | tar -xJ -C ~/apps/arduino
~/apps/arduino/*/install.sh