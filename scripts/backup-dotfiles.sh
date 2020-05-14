#!/bin/bash

BASE_CONFIG_PATH=~/.config
BACKUP_PATH=~/Documents/kde-plasma-setup/dotfiles/

filesToBackup=(
	"terminator"
	"gtk-3.0"
	"Kvantum"
	"i3"
	"kdeglobals"
	"plasma-org.kde.plasma.desktop-appletsrc"
)

for file in ${filesToBackup[@]}; do
	cp -r $BASE_CONFIG_PATH/$file $BACKUP_PATH
done

# Copy the gtkrc-2.0 file which is outside the .config folder
cp ~/.gtkrc-2.0 $BACKUP_PATH  

# Copy the .vimrc file
cp ~/.vimrc $BACKUP_PATH

# Copy the .bashrc file
cp ~/.bashrc $BACKUP_PATH

# Copy /.local/share/applications/
cp -r ~/.local/share/applications/ ~/Documents/kde-plasma-setup/dotfiles/applications/
