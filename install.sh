#!/bin/bash

# Check if pamac-cli is installed

# Install it, if not installed

# Modify pamac.conf to enable AUR
#sudo sed --in-place "s/#EnableAUR/EnableAUR/" /etc/pamac.conf
#sudo sed --in-place "s/#CheckAURUpdates/CheckAURUpdates/" /etc/pamac.conf

# Installation of Apps
echo -e "\e[1;32mInstalling your apps...\e[0m"

pamac install firefox-developer-edition spotify typora atom visual-studio-code-bin atom android-studio terminator github-cli-git virtualbox virtualbox-host-dkms kazam peek timeshift flameshot balena-etcher kvantum-qt5-git albert vim neofetch unzip feh powerline otf-sfmono-patched

# Installation of fonts
echo -e "\e[1;32mInstalling your fonts...\e[0m"

echo -e "\e[1;34m==> Creating .fonts folder in your home dir...\e[0m"
mkdir -p ~/.fonts

echo -e "\e[1;34m==> Copying your favorite fonts...\e[0m"
unzip fonts/fonts.zip -d ~/.fonts

echo -e "\e[1;34m==> Re-building font cache...\e[0m"
fc-cache -f -v

# Installation of dotfiles
echo -e "\e[1;32mInstalling your dotfiles...\e[0m"
'
echo -e "\e[1;34m==> Copying GTK-2.0 config...\e[0m"
cp dotfiles/.gtkrc-2.0 ~/
cp -r dotfiles/gtk-2.0/ ~/.config/

echo -e "\e[1;34m==> Copying GTK-3.0 config...\e[0m"
cp -r dotfiles/gtk-3.0/ ~/.config/

echo -e "\e[1;34m==> Copying kdeglobals...\e[0m"
cp -r dotfiles/kdeglobals ~/.config/

echo -e "\e[1;34m==> Copying KDE Panel config...\e[0m"
cp -r dotfiles/plasma-org.kde.plasma.desktop-appletsrc ~/.config/

echo -e "\e[1;34m==> Copying Kvantum config...\e[0m"
cp -r dotfiles/Kvantum/ ~/.config/
'
echo -e "\e[1;34m==> Copying Terminator config...\e[0m"
cp -r dotfiles/terminator/ ~/.config/

echo -e "\e[1;34m==> Copying Vim Config...\e[0m"
cp dotfiles/.vimrc ~/

echo -e "\e[1;34m==> Copying Bash Config...\e[0m"
cp dotfiles/.bashrc ~/
'
echo -e "\e[1;34m==> Copying Application .desktop files...\e[0m"
mkdir -p ~/.local/share/applications/
cp -r dotfiles/applications ~/.local/share/applications/ 

# Installation of aurorae themes
echo -e "\e[1;32mInstalling your Aurorae theme...\e[0m"

mkdir -p ~/.local/share/aurorae/themes/
cp -r aurorae/Mojave-Dark ~/.local/share/aurorae/themes/

echo -e "\e[1;34m==> Copied your Aurorae theme\e[0m"
echo -e "\e[1;34m==> Please set the theme manually by going to...\e[0m"
echo -e "\e[1;34m...System Settings > Application Style > Window Decorations > Mojave-dark\e[0m"

# Installation of Global Theme
echo -e "\e[1;32mInstalling your favorite Global Theme...\e[0m"

echo -e "\e[1;34m==> Copying 'Glassy' theme...\e[0m"
mkdir -p ~/.local/share/plasma/desktoptheme/Glassy/
cp -r themes/Glassy/ ~/.local/share/plasma/desktoptheme/Glassy/

echo -e "\e[1;34m==> Copying .kde4 config...\e[0m"
mkdir -p ~/.kde4/share/
cp -r kde4/share/ ~/.kde4/share
'
# Installation Script Ended
echo -e "\e[1;32m==> Installation has finished\e[0m"
echo -e "\e[1;32m==> Reboot now? [y/n]\e[0m"; read choice 
if [ $choice == 'y' ]; then
  reboot
else 
  echo -e "\e[1;31m==> Installation Ended\e[0m"
fi
