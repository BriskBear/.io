#!/bin/bash

# Install the asdf plugin for multi-versions
asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git

# Define constants
key_dir="$HOME/.io/blanks/keys"

# Build the queue
add.QUEUE "$@"

# Switch chooses the correct installer to read the queue
$(switch $key_dir/RubyDep)
