#!/usr/bin/env bash

rm -rf ~/apps/rubymine
mkdir -p ~/apps/rubymine
curl -L https://download.jetbrains.com/ruby/RubyMine-2018.3.5.tar.gz | tar -xz -C ~/apps/rubymine

# Create the desktop icon
rm -rf ~/.local/share/applications/jetbrains-rubymine.desktop 
mkdir -p ~/.local/share/applications

cat >~/.local/share/applications/jetbrains-rubymine.desktop  <<EOL
[Desktop Entry]
Version=1.0
Type=Application
Name=JetBrains RubyMine
Icon=$HOME/apps/rubymine/RubyMine-2018.3.5/bin/rubymine.png
Exec="$HOME/apps/rubymine/RubyMine-2018.3.5/bin/rubymine.sh" %f
Comment=The Drive to Develop
Categories=Development;IDE;
Terminal=false
StartupWMClass=jetbrains-rubymine
EOL

chmod +x ~/.local/share/applications/jetbrains-rubymine.desktop