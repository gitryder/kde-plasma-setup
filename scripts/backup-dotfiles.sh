#!/bin/bash

BASE_CONFIG_PATH=~/.config
BACKUP_PATH=~/Documents/kde-plasma-setup/dotfiles/

filesToBackup=(
	"terminator"
	"gtk-3.0"
	"gtk-2.0"
	"Kvantum"
	"i3"
	"kdeglobals"
	"plasma-org.kde.plasma.desktop-appletsrc"
)

for file in ${filesToBackup[@]}; do
	cp -r $BASE_CONFIG_PATH/$file $BACKUP_PATH
done
