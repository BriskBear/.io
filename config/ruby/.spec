#!/bin/bash
[[ -f /tmp/blks/color ]]&& $(source /tmp/blks/color)    # include: Add color to messages
[[ $(ruby -v) ]] && exit                #   guard: If ruby is installed, the job is done

add_ruby_plugin() {
  asdf plugin-add ruby
}

install_ruby() {
 [[ $1 ]] \
   && ( asdf install ruby $1 ) \
   || ( asdf install ruby latest )
}

prep_asdf() {
  [[ -f /tmp/blks/color ]]&& $(source /tmp/blks/color)    # include: Add color to messages
  printf "${LIGHT_GREEN}Would you like to use asdf${NC}${RED} ruby ${NC}${LIGHT_GREEN}versions?\n"
}

ain=0
[[ $(asdf --version) ]]&& (( ain=$ain+1 )) || ain=0     # check:         asdf installed?

case $ain in
  1)
    add_ruby_plugin
    install_ruby $1
  ;;
  0)
    pref_asdf
  ;;
  *)
    printf "${RED}That was not supposed to happen${NC}\n"
  ;;
esac
