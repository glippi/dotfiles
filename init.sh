#!/bin/bash

wd=$(pwd)
echo ${wd}

echo "-= Removing any existing configs =-"
rm -rf ~/.zshrc ~/.vim ~/.vimrc ~/.config/nvim/ ~/.tmux ~/.tmux.conf 2 > /dev/null

#create neovim directory
echo "Setting up neovim..."
mkdir -p ~/.config ~/.config/nvim
git clone https://github.com/kristijanhusak/vim-packager.git ~/.config/nvim/pack/packager/opt/vim-packager
ln -s ${wd}/partials ~/.config/nvim/partials
ln -s ${wd}/init.vim ~/.config/nvim/init.vim
nvim -c 'PackagerInstall'

echo "-= Symlinking new configs =-"
ln -s ${wd}/zshrc ~/.zshrc
ln -s ${wd}/tmux ~/.tmux.conf

echo "-= Log out and Log Back In to see changes =-"
