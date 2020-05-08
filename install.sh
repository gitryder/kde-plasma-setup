#!/bin/bash

# Print some awesome ASCII art

echo "
 /$$$$$$$                                /$$ /$$                            
| $$__  $$                              | $$| $/                            
| $$  \ $$  /$$$$$$  /$$$$$$$  /$$   /$$| $$|_//$$$$$$$                     
| $$  | $$ |____  $$| $$__  $$| $$  | $$| $$  /$$_____/                     
| $$  | $$  /$$$$$$$| $$  \ $$| $$  | $$| $$ |  $$$$$$                      
| $$  | $$ /$$__  $$| $$  | $$| $$  | $$| $$  \____  $$                     
| $$$$$$$/|  $$$$$$$| $$  | $$|  $$$$$$$| $$  /$$$$$$$/                     
|_______/  \_______/|__/  |__/ \____  $$|__/ |_______/                      
                               /$$  | $$                                    
                              |  $$$$$$/                                    
                               \______/                                     
 /$$$$$$                       /$$               /$$ /$$                    
|_  $$_/                      | $$              | $$| $$                    
  | $$   /$$$$$$$   /$$$$$$$ /$$$$$$    /$$$$$$ | $$| $$  /$$$$$$   /$$$$$$ 
  | $$  | $$__  $$ /$$_____/|_  $$_/   |____  $$| $$| $$ /$$__  $$ /$$__  $$
  | $$  | $$  \ $$|  $$$$$$   | $$      /$$$$$$$| $$| $$| $$$$$$$$| $$  \__/
  | $$  | $$  | $$ \____  $$  | $$ /$$ /$$__  $$| $$| $$| $$_____/| $$      
 /$$$$$$| $$  | $$ /$$$$$$$/  |  $$$$/|  $$$$$$$| $$| $$|  $$$$$$$| $$      
|______/|__/  |__/|_______/    \___/   \_______/|__/|__/ \_______/|__/      
"

# Installation of Apps
echo -e "\e[1;32mBegin installing your apps? [y/n]\e[0m"; read choice
if [$choice == 'y'] || [$choice == 'Y']
then
    echo "
      /$$$$$$                               
     /$$__  $$                              
    | $$  \ $$  /$$$$$$   /$$$$$$   /$$$$$$$
    | $$$$$$$$ /$$__  $$ /$$__  $$ /$$_____/
    | $$__  $$| $$  \ $$| $$  \ $$|  $$$$$$ 
    | $$  | $$| $$  | $$| $$  | $$ \____  $$
    | $$  | $$| $$$$$$$/| $$$$$$$/ /$$$$$$$/
    |__/  |__/| $$____/ | $$____/ |_______/ 
            | $$      | $$                
            | $$      | $$                
            |__/      |__/                
    "

    pamac install firefox-developer-edition spotify typora atom visual-studio-code-bin atom android-studio terminator github-cli-git virtualbox virtualbox-host-dkms kazam peek timeshift flameshot balena-etcher kvantum-qt5-git albert vim neofetch unzip

else
    echo "Skipping Installation of Apps"
fi

# Installation of fonts
echo -e "\e[1;32mInstalling your fonts...\e[0m"

echo -e "\e[1;34mCreating .fonts folder in your home dir...\e[0m"
mkdir -p ~/.fonts

echo -e "\e[1;34mCopying your favorite fonts...\e[0m"
unzip fonts/fonts.zip -d ~/.fonts

echo -e "\e[1;34mRe-building font cache...\e[0m"
fc-cache -f -v


