#!/usr/bin/env bash
set -e

rm -rf ~/apps/xlights
mkdir -p ~/apps/xlights

cd ~/apps/xlights

curl -s https://api.github.com/repos/smeighan/xLights/releases/latest \
| grep "xLights-2021.38-x86_64.AppImage" \
| cut -d : -f 2,3 \
| tr -d \" \
| wget -qi -

chmod +x xLights-2021.38-x86_64.AppImage

cd -