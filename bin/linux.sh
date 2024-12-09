#!/bin/bash

# Check if the system is Linux
if [ "$(uname)" != "Linux" ]; then
    echo "Error: This script only works on Linux systems" >> linuxsetup.log
    exit 1
fi

# Check if .TRASH directory exists, if not, create it
if [ ! -d ~/.TRASH ]; then
    mkdir ~/.TRASH
    echo "Created .TRASH directory" >> linuxsetup.log
fi

# If .nanorc exists, rename it to .bup_nanorc
if [ -f ~/.nanorc ]; then
    mv ~/.nanorc ~/.bup_nanorc
    echo "The current .nanorc file was renamed to .bup_nanorc" >> linuxsetup.log
fi

# Copy the .nanorc file from ./etc/nanorc to home directory
cp ~/.dotfiles/etc/nanorc ~/.nanorc
echo "Copied .nanorc file from .dotfiles/etc/nanorc to the home directory" >> linuxsetup.log

# Add the line to source bashrc_custom at the end of .bashrc
echo 'source ~/.dotfiles/etc/bashrc_custom' >> ~/.bashrc
echo "Added source ~/.dotfiles/etc/bashrc_custom to .bashrc" >> linuxsetup.log



