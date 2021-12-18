#!/bin/bash

ruby_deps() {
  sudo pacman -S --needed --noconfirm base-devel libffi libyaml openssl zlib
}

ruby_deps
