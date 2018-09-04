#!/bin/bash

DOTFILES=~/dotfiles

# generic setup
sudo apt update
sudo apt upgrade

# General
sudo apt install git nvim 

# i3 specific installation
if [ $1 = "i3" ]; then
    echo "i3 option"
    sudo apt install feh compton i3status i3blocks thunder
fi

# Clone vundle into .vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Patch powerfonts
git clone https://github.com/powerline/fonts.git --depth=1
bash fonts/install.sh
rm -rf fonts

# Symlink everything up
ln -s $DOTFILES/.vimrc 
ln -s $DOTFILES/.tmux.conf 
ln -s $DOTFILES/.bashrc 
ln -s $DOTFILES/.config/i3 .config/i3
ln -s $DOTFILES/.config/rofi .config/rofi

echo "---"
echo "Now to finish off, setup your terminal to support Solarized theme"
echo "---"
