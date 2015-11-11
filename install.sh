#!/usr/bin/env bash

# Make a directory for the old rc files
if [ ! -d ./runcoms_old ]; then
    mkdir ./runcoms_old
fi

# List all rc files supported by host-dotfiles
runcoms=(./runcoms/*)

for file in "${runcoms[@]}"; do
    #echo $file
    dotname=$(basename "$file")
    #echo $dotname
    # Test if diff returns a string: "the files differ..." 
    dotfile="$HOME/.$dotname" 
    echo $dotfile
    # Copy old dotfiles to runcoms_old directory
    if [ -f $dotfile ]; then
        if [ -n "`diff "$dotfile" "$file"`" ]; then 
            echo "Copying old dotfiles..."
            date=$(date +"%Y-%m-%d:%k:%M")
            cat "$dotfile" > "./runcoms_old/$dotname-$date" 
            echo "Copied."    
        fi
    fi
    # Link new rc file to home directory
    rm $dotfile 
    ln -s "$file" "$dotfile" 

done
echo "Finished linking files to home directory"
