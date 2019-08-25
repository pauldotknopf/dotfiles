#!/usr/bin/env bash
set -e

rm -rf ~/apps/datagrip
mkdir -p ~/apps/datagrip
curl -L https://download.jetbrains.com/datagrip/datagrip-2019.2.1.tar.gz | tar -xz -C ~/apps/datagrip

# Create the desktop icon
rm -rf ~/.local/share/applications/jetbrains-datagrip.desktop 
mkdir -p ~/.local/share/applications

cat >~/.local/share/applications/jetbrains-datagrip.desktop  <<EOL
[Desktop Entry]
Version=1.0
Type=Application
Name=JetBrains DataGrip
Icon=$HOME/apps/datagrip/DataGrip-2019.2.1/bin/datagrip.png
Exec="$HOME/apps/datagrip/DataGrip-2019.2.1/bin/datagrip.sh" %f
Comment=The Drive to Develop
Categories=Development;IDE;
Terminal=false
StartupWMClass=jetbrains-datagrip
EOL

chmod +x ~/.local/share/applications/jetbrains-datagrip.desktop