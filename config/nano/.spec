#!/bin/bash

LOG='/tmp/.0'
[[ -d /tmp/.naBak ]]&& printf ".naBak exists\n" >> /tmp/.0 || $(mkdir /tmp/.naBak &>> /tmp/.0)
[[ -L /usr/bin/vi ]]|| sudo rm -v /usr/bin/vi &>> $LOG && sudo ln -s /usr/bin/nano /usr/bin/vi

