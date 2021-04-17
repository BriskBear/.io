#!/bin/bash

LOG='/tmp/.0'
ask_admin="Ask your ${PINK}Administrator${NC}, if you would like to symlink 'vi' to 'nano'\n"

[[ -d /tmp/.naBak ]]&& printf ".naBak exists\n" >> /tmp/.0 \
  || mkdir /tmp/.naBak &>> /tmp/.0

vi_link() {
  read -p "Symlink 'vi' to 'nano'? " link
  case $link in
      y|Y|affirmative|confirm|please|'please!'|please\!)
          sudo rm -v /usr/bin/vi &>> $LOG
          sudo ln -s $(which nano) /usr/bin/vi
          ;;
      *)
        printf "User declined linking vi\n"
        ;;
  esac
}

[[ -L /usr/bin/vi ]]&& printf "${LIGHT_CYAN}vi${NC} is only a link\n" \
  || if   [ $(cat /etc/group | grep sudo |grep $USER) ]
     then
         vi_link
     elif [ $(cat /etc/group | grep wheel|grep $USER) ]
     then
         vi_link
     elif [ $USER == 'root' ]
     then
         vi_link
     else
         printf "$ask_admin"
     fi
