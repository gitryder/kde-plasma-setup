#!/bin/bash

curl https://raw.githubusercontent.com/gitryder/kde-plasma-setup/master/dotfiles/.git-prompt.sh >> ~/.git-prompt.sh

curl https://raw.githubusercontent.com/gitryder/kde-plasma-setup/master/dotfiles/.bashrc > ~/.bashrc 

curl https://raw.githubusercontent.com/gitryder/kde-plasma-setup/master/dotfiles/.vimrc > ~/.vimrc	

source .bashrc
