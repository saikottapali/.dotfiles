#!/bin/bash
# This script cleans up the setup.

# Remove .nanorc
rm -f ~/.nanorc

# Remove the custom bashrc source
sed -i '/source ~\/.dotfiles\/etc\/bashrc_custom/d' ~/.bashrc

# Remove the .TRASH directory
rm -rf ~/.TRASH

