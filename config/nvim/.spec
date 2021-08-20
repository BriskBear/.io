#!/bin/bash

source ~/.io/config/envar

SOURCE=`dirname $SCRIPT`
DEST="$HOME/.config/nvim/"
url='https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage'
warn=" ${CYAN}Cowardly,${NC}${LIGHT_GREEN} preserving ${NC}nvim config.\n${RED}DANGER ${NC}${PINK}replace current nvim config with the newest from ~/.io?${NC} (${RED}y${NC}/${LIGHT_GREEN}n${NC})\n"

copy_config() {
  [[ -d ~/.config/nvim ]] \
    && ( echo 'neovim config exists!' && exit ) \
    || ( 
      [[ -e $HOME/.config/nvim ]]|| mkdir -vp $HOME/.config/nvim
      cp -rvf $SOURCE $DEST
    )
}

get_plugs() {
  plugs=(
    'ervandew/supertab' 
    'tpope/vim-endwise'
    'junegunn/vim-easy-align'
    'kien/ctrlp.vim'
  )
  [[ -d ~/.config/nvim/plugs ]]&& \
  ( echo "plugs dir exists!" && exit ) \
  || ( mkdir -vp ~/.config/nvim/plugs )
  for p in ${plugs[@]}
  do
    git clone "https://github.com/$p" "$HOME/.config/nvim/plugs/$p"
  done
}

install_neovim() {
  [[ -d ~/Downloads ]] && ( cd ~/Downloads )
  ( wget $url && \
    ( chmod u+x nvim.appimage ) && \
    ( ./nvim.appimage --appimage-extract ) && \
    ( rsync -aAXP ./squashfs-root/usr/ /usr/) \
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
