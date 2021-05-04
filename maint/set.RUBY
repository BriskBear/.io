#!/bin/bash

. ~/.io/config/envar
INFORM_NAME='RUBY'
LINK='$HOME/.io/ruby'
STATIC_DIR="$HOME/.io/ruby"
TMP='.rb'

# Log announce
echo "Start $SCRIPT Log" >> $LOG

# Remove and renew the ramdir
rm -vr "/tmp/$TMP" &>> $LOG
cp -vfr "$STATIC_DIR" "/tmp/$TMP" &>> $LOG

# If the named link does not already exist create it.
if [ ! -d "$LINK" ]
then
    ln -vs "/tmp/$TMP" "$LINK" &>> $LOG
fi

# Inform the user the ramdisk has been updated
printf "${PINK}$INFORM_NAME${NC} set to RAMDisk\n"

# Log denounce
echo "Stop $SCRIPT Log" >> $LOG
