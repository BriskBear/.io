#!/bin/bash

source ~/.io/config/envar
SOURCE=`dirname $SCRIPT`
DEST="~/.config/"
url='https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage'

copy_config() {
  [[ -d ~/.config/nvim ]]&& ( echo 'neovim config exists!' && exit ) || ( cp -rvf $SOURCE $DEST )
}
get_Vundle() {
  [[ -d ~/.vim/bundle ]]&& ( echo "~/.vim/bundle exists!" && exit ) || ( mkdir -vp ~/.vim/bundle/ )
  git clone https://github.com/Vundlevim/Vundle.vim ~/.vim/bundle/Vundle.vim
}
install_neovim() {
  [[ -f ~/Downloads ]]&& ( cd ~/Downloads )
  ( wget $url && \
    ( chmod u+x nvim.appimage ) && \
    ( ./nvim.appimage --appimage-extract ) && \
    ( sudo cp -vrf ./squashfs-root/usr /usr) \
  ) && ( echo 'neovim Installed!' )
}

copy_config
get_Vundle
install_neovim
