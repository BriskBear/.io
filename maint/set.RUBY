#!/bin/bash

INFORM_NAME='RUBY'
LINK='$HOME/.io/ruby'
STATIC_DIR="$HOME/.io/.ruby"
TMP='.rb'

rm -r "/tmp/$TMP" &>>/tmp/.0
cp -r "$STATIC_DIR" "/tmp/$TMP"

if [ ! -d "$LINK" ]
then
    sudo ln -s "/tmp/$TMP" "$LINK"
fi

echo "$INFORM_NAME set to RAMDisk"
