#!/bin/bash

echo "Do you want to install the aurorae theme? [y/n]" 
read choice

if [ $choice == 'y' ] || [ $choice == 'Y' ]
then
	cp -r Mojave-Dark ~/.local/share/aurorae/themes/
else 
	echo "Install Operation Aborted"
fi
