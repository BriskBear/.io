#!/bin/bash

LOG='/tmp/.0'
INFORM_NAME='RUBY'
LINK='$HOME/.io/ruby'
STATIC_DIR="$HOME/.io/.ruby"
TMP='.rb'

rm -r "/tmp/$TMP" &>> $LOG
cp -vfr "$STATIC_DIR" "/tmp/$TMP" &>> $LOG

if [ ! -d "$LINK" ]
then
    ln -vs "/tmp/$TMP" "$LINK" &>> $LOG
fi

printf "${PINK}$INFORM_NAME${NC} set to RAMDisk\n"
