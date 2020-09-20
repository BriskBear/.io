#!/bin/bash

LINK='ruby'
STATIC_DIR="$HOME/.io/.ruby"
TMP='.rb'

rm -r "/tmp/$TMP" &>>/tmp/.0
cp -r "$STATIC_DIR" "/tmp/$TMP"

if [ ! -d $HOME/.io/Ruby ]
then
    ln -s /tmp/.rb $HOME/.io/ruby
fi

echo "RUBY set to RAMDisk"
