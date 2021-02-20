#!/bin/bash

if ! git --version &>/dev/null; then
	pamac install git 
	exit
fi

cd /tmp/ && 
git clone https://aur.archlinux.org/pamac-aur.git &&
cd pamac-aur/ &&
sudo makepkg &&

if pamac --version &>/dev/null; then
	sudo sed -i "s/#EnableAUR/EnableAUR/" /etc/pamac.conf
	exit
fi

cd ~/ &&
curl https://raw.githubusercontent.com/gitryder/kde-plasma-setup/master/dotfiles/.bashrc >> .bashrc &&
cd && bash


