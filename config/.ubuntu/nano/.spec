#!/bin/bash

[[ ! -d /tmp/.naBak ]] && $(mkdir /tmp/.naBak &>> /tmp/.0) || \
 printf ".naBak exists\n" >> /tmp/.0
