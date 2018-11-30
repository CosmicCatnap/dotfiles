#!/bin/bash

# please run this package with suo privlages if you want it to install prerequesits

# The packages that must be installed before we can transplant dot files
packages='zsh xscreensaver vim python nano irssi rxvt-unicode terminator'

declare -A hasPath;
hasPath[/etc/redhat-release]=yum
hasPath[/etc/arch-release]=pacman
hasPath[/etc/gentoo-release]=emerge
hasPath[/etc/SuSE-release]=zypp
hasPath[/etc/debian_version]=apt-get
hasPath[/etc/linuxmint]=apt-get
hasPath[/etc/ubuntu-release]=apt-get

for f in ${!hasPath[@]}
do
    if [[ -f $f ]];then
      echo -n "Welcome to the dotfile bootstrap, your package manager path is $hasPath"
      echo "would you like to install the following?"
      for p in $packages
      do
        echo $p
      done
      read -p "Are you sure? " -n 1 -r
      echo    # (optional) move to a new line
      if [[ $REPLY =~ ^[Yy]$ ]]
        then
        exec ${osInfo[$f]} "install" $packages
        fi
      read -p "Would you like to move the dotfiles in ${PWD} to $HOME?" -n 1 -r
      echo "(y/n) "
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
	echo "Moving dotfiles from ${PWD} to $HOME"
	cp -R ${PWD}/.*  ~/
else
	echo "It does not appear that your /etc/issue could be found four this distribution"
	echo "Exiting..."
fi
