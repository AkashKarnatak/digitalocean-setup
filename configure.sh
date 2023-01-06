#!/bin/bash

LOCATION=$HOME

echo -e "\n\nBacking up .bashrc, .bash_aliases and .inputrc"

if [ -f $HOME/.bashrc ]; then
  mv $HOME/.bashrc $HOME/.bashrc.bak
fi

if [ -f $HOME/.bash_aliases ]; then
  mv $HOME/.bash_aliases $HOME/.bash_aliases.bak
fi

if [ -f $HOME/.inputrc ]; then
  mv $HOME/.inputrc $HOME/.inputrc.bak
fi

echo -e "\nDownloading new config..."

curl https://raw.githubusercontent.com/AkashKarnatak/digitalocean-setup/main/.bashrc -o ~/.bashrc
curl https://raw.githubusercontent.com/AkashKarnatak/digitalocean-setup/main/.bash_aliases -o ~/.bash_aliases
curl https://raw.githubusercontent.com/AkashKarnatak/digitalocean-setup/main/.inputrc -o ~/.inputrc

echo -e "\n\nLoad new configuration using,\n\tsource ~/.bashrc && bind -f  ~/.inputrc"
