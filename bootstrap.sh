#!/bin/bash

# please run this package with suo privlages if you want it to install prerequesits

# The packages that must be installed before we can transplant dot files
packages='zsh vim python nano weechat rxvt-unicode terminator tmux feh ttf-dejavu curl'
      printf  "=================================================\n"
      echo -n "Welcome to my Arch Linux dotfile bootstrap script"
      printf  "\n=================================================\n\n"
      echo -e "The following packages are required: \033[31m$packages\033[0m"
      #for p in $packages
      #do
      #done
      read -p "\nWould you like to install these packages now? " -n 1 -r
      if [[ $REPLY =~ ^[Yy]$ ]]
        then
        printf "\n"
        sudo pacman -S $packages
        printf "\n"
        fi
      read -p "\nIt's recommended to install oh-my-zsh, install now?\n" -n 1 -r
      if [[ $REPLY =~ ^[Yy]$ ]]
        then
        printf "\n"
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
      printf "\nWould you like to move dotfiles from \033[31m${PWD}\033[0m to \033[31m$HOME\033[0m?\n"
      read -p  "(y/n) " -n 1 -r
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
	printf "\nMoving dotfiles from \033[31m${PWD}\033[0m to \033[31m$HOME\033[0m\n"
	cp -R ${PWD}/.*  ~/
	fi
        echo "Dotfile install complete!"
