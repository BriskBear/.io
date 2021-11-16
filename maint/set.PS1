#!/bin/bash

if [ -f /tmp/ps1 ]
then
    sudo rm /tmp/ps1
fi

cp ~/.io/config/PS1.9 /tmp/ps1
