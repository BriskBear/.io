#!/bin/bash

. "$HOME/.io/.blanks/color"
. ~/.io/config/envar

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

# Log announce
echo "Start $SCRIPT Log" >> $LOG

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

# Log denounce
echo "Stop $SCRIPT Log" >> $LOG

#sudo chmod u+x ~/.io/* -R
#find . -maxdepth 1 -type f
