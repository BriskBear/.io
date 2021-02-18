#!/bin/bash

app='remmina'
cfg_file=''

( [ -f "$HOME/.config/$app/cfg_file" ] && [ ! -L "$HOME/.config/$app/cfg_file" ] ) \
  && ( mv "$HOME/.config/$app/$cfg_file" "$HOME/.config/$app/\~$cfg_file" \
       && ln -s "$HOME/.io/config/$app/$cfg_file" "$HOME/.config/$app/$cfg_file" ) \
  || ( mkdir -p "$HOME/.config/$app" && cp $HOME/.io/config/
