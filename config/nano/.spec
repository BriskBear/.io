#!/bin/bash

[[ -d /tmp/.naBak ]] && printf ".naBak exists\n" >> /tmp/.0 || $(mkdir /tmp/.naBak &>> /tmp/.0)
