#!/bin/bash

DOTFILES=~/dotfiles

for arg in $@; do
    if [ $arg = "setup" ]; then
        # generic setup
        sudo apt update
        sudo apt upgrade

        # General
        sudo apt install git nvim 

        # i3 specific installation

        # Clone vundle into .vim
        git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

        # Patch powerfonts
        git clone https://github.com/powerline/fonts.git --depth=1
        bash fonts/install.sh
        rm -rf fonts
    fi
    if [ $arg = "i3" ]; then
        echo "i3 option chosen"
        sudo apt install feh compton i3status i3blocks thunar
    fi
done

# Symlink everything up
echo "---"
echo "Setting up symlinks"
ln -s $DOTFILES/general.vim ~
ln -s $DOTFILES/keybindings.vim ~
ln -s $DOTFILES/plugins.vim ~
ln -s $DOTFILES/.vimrc ~
ln -s $DOTFILES/.tmux.conf ~
ln -s $DOTFILES/.bashrc ~
ln -s $DOTFILES/.config/i3 .config/i3 ~
ln -s $DOTFILES/.config/rofi .config/rofi ~

echo "---"
echo "Now to finish off, setup your terminal to support Solarized theme"
