#!/bin/bash

sudo pacman -Sy --needed --noconfirm base-devel libffi libyaml openssl zlib
asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git
