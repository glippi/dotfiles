#!/bin/bash

wd=$(pwd)
echo ${wd}

echo "-= Removing any existing configs =-"
rm -rf ~/.zshrc ~/.vim ~/.vimrc ~/.config/nvim/ ~/.tmux ~/.tmux.conf 2 > /dev/null

#create neovim directory
echo "-= Creating necessary directories =-"
mkdir -p ~/.config ~/.config/nvim ~/.config/nvim/partials

echo "-= Symlinking new configs =-"
ln -sf ${wd}/zshrc ~/.zshrc
ln -sf ${wd}/tmux.conf ~/.tmux.conf
ln -sf ${wd}/init.vim ~/.config/nvim/init.vim
ln -sf ${wd}/partials/settings.vim ~/.config/nvim/partials/settings.vim
ln -sf ${wd}/partials/plugins.vim ~/.config/nvim/partials/plugins.vim
ln -sf ${wd}/partials/mappings.vim ~/.config/nvim/partials/mappings.vim
ln -sf ${wd}/partials/abbreviations.vim ~/.config/nvim/partials/abbreviations.vim
ln -sf ${wd}/partials/statusline.vim ~/.config/nvim/partials/statusline.vim
ln -sf ${wd}/partials/ale.vim ~/.config/nvim/partials/ale.vim
ln -sf ${wd}/partials/fzf.vim ~/.config/nvim/partials/fzf.vim
ln -sf ${wd}/partials/functions.vim ~/.config/nvim/partials/functions.vim
ln -sf ${wd}/partials/colorscheme.vim ~/.config/nvim/partials/colorscheme.vim

echo "-= Log out and Log Back In to see changes =-"
