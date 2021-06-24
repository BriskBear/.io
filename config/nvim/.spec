#!/bin/bash

source ~/.io/config/envar
SOURCE=`dirname $SCRIPT`
DEST="$HOME/.config/"
url='https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage'
warn=" ${CYAN}Cowardly,${NC}${LIGHT_GREEN} preserving ${NC}nvim config.\n${RED}DANGER ${NC}${PINK}replace current nvim config with the newest from ~/.io?${NC} (${RED}y${NC}/${LIGHT_GREEN}n${NC})\n"

copy_config() {
  [[ -d ~/.config/nvim ]]&& \
    ( echo 'neovim config exists!' && exit ) \
    || ( cp -rvf $SOURCE $DEST )
}

get_Vundle() {
  [[ -d ~/.vim/bundle ]]&& \
  ( echo "~/.vim/bundle exists!" && exit ) \
  || ( mkdir -vp ~/.vim/bundle/ )
  ( git clone https://github.com/Vundlevim/Vundle.vim ~/.vim/bundle/Vundle.vim &>> /tmp/.10 & )
}

install_neovim() {
  [[ -d ~/Downloads ]]&& ( cd ~/Downloads )
  ( wget $url && \
    ( chmod u+x nvim.appimage ) && \
    ( ./nvim.appimage --appimage-extract ) && \
    ( sudo cp -vrf ./squashfs-root/usr /usr) \
  ) && ( echo 'neovim Installed!' )
}

update_config() {
    printf "$warn"
    echo $update
    read update
}

echo $SOURCE
echo $DEST

update_config

copy_config
# get_Vundle
# install_neovim
