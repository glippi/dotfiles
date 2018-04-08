#!/bin/bash

echo "-= Removing any existing configs =-"
rm -rf ~/.zshrc ~/.vim ~/.vimrc ~/.config/nvim/ ~/.tmux ~/.tmux.conf 2 >
/dev/null

#create neovim directory
echo "-= Creating necessary directories =-"
mkdir -p ~/.config ~/.config/nvim

echo "-= Symlinking new configs =-"
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/init.vim ~/.config/nvim/init.vim

echo "-= Log out and Log Back In to see changes =-"
