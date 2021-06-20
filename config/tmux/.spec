#!/bin/bash

function reload_tmux() {
    rsync -aAXP ~/.io/config/tmux ~/.config/
    rm -v ~/.tmux.conf
    rm -v ~/.config/tmux/tmux.conf
    ln -s ~/.config/tmux/3.0a ~/.config/tmux/tmux.conf
}

