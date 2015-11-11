#!/usr/bin/env bash

# Make a directory for the old rc files
if [ ! -d ./runcoms_old ]; then
    mkdir ./runcoms_old
fi

# List all rc files supported by host-dotfiles
runcoms=(./runcoms/*)

for file in "${runcoms[@]}"; do
    echo $file
    dotname=$(basename "$file")
    echo $dotname


done
