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
