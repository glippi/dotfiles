#!/bin/bash

wd=$(pwd)
echo ${wd}

echo "-= Removing any existing configs =-"
rm -rf ~/.zshrc ~/.vim ~/.vimrc ~/.config/nvim/ ~/.tmux ~/.tmux.conf 2 > /dev/null

#create neovim directory
echo "-= Creating necessary directories =-"
mkdir -p ~/.config ~/.config/nvim ~/.config/nvim/nvim-partials

echo "-= Symlinking new configs =-"
ln -sT ${wd}/zshrc ~/.zshrc
ln -sT ${wd}/tmux.conf ~/.tmux.conf
ln -sT ${wd}/nvim-partials/settings.vim ~/.config/nvim/nvim-partials/settings.vim
ln -sT ${wd}/nvim-partials/plugins.vim ~/.config/nvim/nvim-partials/plugins.vim
ln -sT ${wd}/nvim-partials/mappings.vim ~/.config/nvim/nvim-partials/mappings.vim
ln -sT ${wd}/nvim-partials/abbreviations.vim ~/.config/nvim/nvim-partials/abbreviations.vim
ln -sT ${wd}/nvim-partials/statusline.vim ~/.config/nvim/nvim-partials/statusline.vim
ln -sT ${wd}/nvim-partials/ale.vim ~/.config/nvim/nvim-partials/ale.vim
ln -sT ${wd}/nvim-partials/fzf.vim ~/.config/nvim/nvim-partials/fzf.vim
ln -sT ${wd}/nvim-partials/functions.vim ~/.config/nvim/nvim-partials/functions.vim
ln -sT ${wd}/nvim-partials/colorscheme.vim ~/.config/nvim/nvim-partials/colorscheme.vim
ln -sT ${wd}/init.vim ~/.config/nvim/init.vim

echo "-= Log out and Log Back In to see changes =-"
