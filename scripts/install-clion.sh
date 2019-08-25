#!/usr/bin/env bash
set -e

rm -rf ~/apps/clion
mkdir -p ~/apps/clion
curl -L https://download.jetbrains.com/cpp/CLion-2019.2.tar.gz | tar -xz -C ~/apps/clion

# Create the desktop icon
rm -rf ~/.local/share/applications/jetbrains-clion.desktop 
mkdir -p ~/.local/share/applications

cat >~/.local/share/applications/jetbrains-clion.desktop  <<EOL
[Desktop Entry]
Version=1.0
Type=Application
Name=JetBrains CLion
Icon=$HOME/apps/clion/clion-2019.2/bin/clion.png
Exec="$HOME/apps/clion/clion-2019.2/bin/clion.sh" %f
Comment=The Drive to Develop
Categories=Development;IDE;
Terminal=false
StartupWMClass=jetbrains-clion
EOL

chmod +x ~/.local/share/applications/jetbrains-clion.desktop