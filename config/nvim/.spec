#!/bin/bash

SCRIPT=`realpath $0`
SOURCE=`dirname $SCRIPT`
DEST="$HOME/.config/"
url='https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage'
warn=" ${CYAN}Cowardly,${NC}${LIGHT_GREEN} preserving ${NC}nvim config.\n${RED}DANGER ${NC}${PINK}replace current nvim config with the newest from ~/.io?${NC} (${RED}y${NC}/${LIGHT_GREEN}n${NC})\n"

copy_config() {
  [[ -d ~/.config/nvim ]]&& \
    ( echo 'neovim config exists!' && exit ) \
    || ( cp -rvf $SOURCE $DEST )
}

get_plugs() {
  plugs=(
    'ervandew/supertab' 
    'tpope/vim-endwise'
    'junegunn/vim-easy-align'
    'kien/ctrlp.vim'
  )
  [[ -d ~/.vim/ ]]&& \
  ( echo "~/.vim/ exists!" && exit ) \
  || ( mkdir -vp ~/.config/nvim/plugs )
  for p in ${plugs[@]}
  do
    git clone "https://github.com/$p" "$HOME/.config/nvim/plugs/$p"
  done
}

install_neovim() {
  [[ -d ~/Downloads ]]&& ( cd ~/Downloads )
  ( curl -L $url -o nvim.appimage && \
    ( chmod u+x nvim.appimage ) && \
    ( ./nvim.appimage --appimage-extract ) && \
    ( cp -rf ./squashfs-root/usr/* /usr/) 
  ) && ( echo 'neovim Installed!' )
}

update_config() {
    printf "$warn"
    echo $update
    read update
}

echo $SOURCE
echo $DEST

# update_config

copy_config
get_plugs
echo 'call install_neovim to build nightly'
