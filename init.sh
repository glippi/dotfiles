#!/bin/bash

wd=$(pwd)
echo ${wd}

echo "-= Removing any existing configs =-"
rm -rf ~/.zshrc ~/.vim ~/.vimrc ~/.config/nvim/ ~/.tmux ~/.tmux.conf 2 > /dev/null

#create neovim directory
echo "-= Creating necessary directories =-"
mkdir -p ~/.config ~/.config/nvim
mkdir -p ~/.config ~/.config/nvim/nvim-partials

echo "-= Symlinking new configs =-"
echo ${wd}
ln -s ${wd}/zshrc ~/.zshrc
ln -s ${wd}/tmux.conf ~/.tmux.conf
ln -s ${wd}/init.vim ~/.config/nvim/init.vim
ln -s ${wd}/nvim-partials/abbreviations.vim ~/.config/nvim/nvim-partials/abbreviations.vim
ln -s ${wd}/nvim-partials/ale.vim ~/.config/nvim/nvim-partials/ale.vim
ln -s ${wd}/nvim-partials/colorscheme.vim ~/.config/nvim/nvim-partials/colorscheme.vim
ln -s ${wd}/nvim-partials/functions.vim ~/.config/nvim/nvim-partials/functions.vim
ln -s ${wd}/nvim-partials/fzf.vim ~/.config/nvim/nvim-partials/fzf.vim
ln -s ${wd}/nvim-partials/mappings.vim ~/.config/nvim/nvim-partials/mappings.vim
ln -s ${wd}/nvim-partials/plugins.vim ~/.config/nvim/nvim-partials/plugins.vim
ln -s ${wd}/nvim-partials/settings.vim ~/.config/nvim/nvim-partials/settings.vim
ln -s ${wd}/nvim-partials/statusline.vim ~/.config/nvim/nvim-partials/statusline.vim

echo "-= Log out and Log Back In to see changes =-"
