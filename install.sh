#!/bin/bash

DOTFILES=~/dotfiles

sudo apt update
sudo apt upgrade
# Make sure we have git.
sudo apt install git
# sudo apt install vim
sudo apt install nvim

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
ln -s $DOTFILES/.config/i3/ .config/
ln -s $DOTFILES/.config/rofi/ .config/


echo "---"
echo "Now to finish off, setup your terminal to support Solarized theme"
echo "---"
