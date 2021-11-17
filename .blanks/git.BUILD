#!/bin/bash

make_loop() {
  gith=($(ls /tmp/hub/))
  for h in ${gith[@]}
  do 
    pushd /tmp/hub/$h && \
    sudo make -j5 && \
    sudo make install -j5 && \
    popd
  done
}

makepkg_loop() {
  aurl=($(ls /tmp/aur/))
  for a in ${aurl[@]}
  do 
    pushd /tmp/aur/$a && \
    makepkg &>> makepkg.log && \
    sudo cp -rf pkg/$a/usr/ / && \
    popd
  done
}

make_loop
makepkg_loop
