#!/bin/bash

DOTFILES=~/dotfiles

for arg in $@; do
    if [ $arg = "setup" ]; then
        # generic setup
        sudo apt update
        sudo apt upgrade

        # General
        sudo apt install git nvim snap
        sudo snap install spotify eclipse default-jdk intellij-idea-community docker --classic

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
        sudo apt install feh compton i3status i3blocks rofi xbacklight
        echo i3-gaps not installed, do this yourself
        echo polybar not installed, do this yourself
    fi
done


# Symlink everything up
echo "---"
echo "Setting up symlinks"
ln -s $DOTFILES/.config/nvim $HOME/.config
#ln -s $DOTFILES/.config/keybindings.vim ~
#ln -s $DOTFILES/.config/plugins.vim ~
#ln -s $DOTFILES/.config/init.vim~
ln -s $DOTFILES/.tmux.conf ~
ln -s $DOTFILES/.bashrc ~
ls -s $DOTFILES/.spacemacs ~
ln -s $DOTFILES/.config/i3 $HOME/.config
ln -s $DOTFILES/.config/rofi $HOME/.config
ln -s $DOTFILES/scripts/buildmvn.sh /usr/local/bin
ln -s $DOTFILES/scripts/brightness.sh ~/.local/bin
ln -s $DOTFILES/.config/polybar $HOME/.config

echo "---"
echo "Now to finish off, setup your terminal to support Solarized theme"
