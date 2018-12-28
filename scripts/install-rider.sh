#!/usr/bin/env bash

rm -rf ~/apps/rider
mkdir -p ~/apps/rider
curl -L https://download.jetbrains.com/rider/JetBrains.Rider-2018.3.1.tar.gz | tar -xz -C ~/apps/rider

# Create the desktop icon
rm -rf ~/.local/share/applications/jetbrains-rider.desktop 
mkdir -p ~/.local/share/applications

cat >~/.local/share/applications/jetbrains-rider.desktop  <<EOL
[Desktop Entry]
Version=1.0
Type=Application
Name=JetBrains Rider
Icon=$HOME/apps/rider/JetBrains Rider-2018.3.1/bin/rider.png
Exec="$HOME/apps/rider/JetBrains Rider-2018.3.1/bin/rider.sh" %f
Comment=The Drive to Develop
Categories=Development;IDE;
Terminal=false
StartupWMClass=jetbrains-rider
EOL

chmod +x ~/.local/share/applications/jetbrains-rider.desktop