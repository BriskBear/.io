#!/bin/bash

. "$HOME/.io/.blanks/color"

LOG="/tmp/.0"
MESSAGES=( \
  "Setting ${LIGHT_CYAN}$HOME/.io${NC}${YELLOW} executables${NC}\n" \
  "Setting ${LIGHT_CYAN}$HOME/.io/.blanks${NC}${YELLOW} executables${NC}\n" \
)
IOS=$( \
  find \
    "$HOME/.io/" \
    -maxdepth 1 \
    -type f \
)
BLANKS=$( \
  find \
    "$HOME/.io/.blanks" \
    -maxdepth 1 \
    -type f \
)

printf "${MESSAGES[0]}"
for i in "${IOS[@]}"
do
    sudo chmod -v u+x "$i" &>> "$LOG"
#    printf "$i\n"
done
printf "${MESSAGES[1]}"
for b in "${BLANKS[@]}"
do
    sudo chmod -v u+x "$b" &>> "$LOG"
#    printf "$b\n"
done
