#!/bin/bash

wd=$(pwd)
echo ${wd}

echo "-= Removing any existing configs =-"
rm -rf ~/.zshrc ~/.vim ~/.vimrc ~/.config/nvim/ ~/.tmux ~/.tmux.conf 2 > /dev/null

#create neovim directory
echo "-= Creating necessary directories =-"
mkdir -p ~/.config ~/.config/nvim

echo "-= Symlinking new configs =-"
ln -s ${wd}/zshrc ~/.zshrc
ln -s ${wd}/tmux.conf ~/.tmux.conf
ln -s ${wd}/init.vim ~/.config/nvim/init.vim

echo "-= Log out and Log Back In to see changes =-"
