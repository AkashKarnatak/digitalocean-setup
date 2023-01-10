#!/bin/bash

LOCATION=$HOME

echo -e "\n\nBacking up .bashrc, .bash_aliases, .inputrc and .tmux.conf"

if [ -f $HOME/.bashrc ]; then
  mv $HOME/.bashrc $HOME/.bashrc.bak
fi

if [ -f $HOME/.bash_aliases ]; then
  mv $HOME/.bash_aliases $HOME/.bash_aliases.bak
fi

if [ -f $HOME/.inputrc ]; then
  mv $HOME/.inputrc $HOME/.inputrc.bak
fi

if [ -f $HOME/.tmux.conf ]; then
  mv $HOME/.tmux.conf $HOME/.tmux.conf.bak
fi

echo -e "\nDownloading new config..."

curl https://raw.githubusercontent.com/AkashKarnatak/digitalocean-setup/main/.bashrc -o ~/.bashrc
curl https://raw.githubusercontent.com/AkashKarnatak/digitalocean-setup/main/.bash_aliases -o ~/.bash_aliases
curl https://raw.githubusercontent.com/AkashKarnatak/digitalocean-setup/main/.inputrc -o ~/.inputrc
curl https://raw.githubusercontent.com/AkashKarnatak/digitalocean-setup/main/.tmux.conf -o ~/.tmux.conf

echo -e "\n\nLoad new configuration using,\n\tsource ~/.bashrc && bind -f  ~/.inputrc"
