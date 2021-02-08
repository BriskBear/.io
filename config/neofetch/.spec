#!/bin/bash

# Acquire Current neofetch version
neofetch -v &> /tmp/neover
VER=$(grep 'version:' /tmp/neover|rev|cut -f1 -d ' '|rev)

# If neofetch config is a link, delete it for refreshing
[[ -L $HOME/.config/neofetch/config.conf ]] && rm $HOME/.config/neofetch/config.conf

# Backup ~/.config/neofetch/config.conf if it is a regular-file
( [[ -f $HOME/.config/neofetch/config.conf ]] && \
  [[ ! -L $HOME/.config/neofetch/config.conf ]] ) && \
  ( mv $HOME/.config/neofetch/config.conf $HOME/.config/neofetch/\~config.conf )

# Link the neofetch config file to the current version in io
ln -s $HOME/.io/config/neofetch/$VER $HOME/.config/neofetch/config.conf
