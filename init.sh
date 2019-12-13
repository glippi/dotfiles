#!/bin/bash

wd=$(pwd)
echo ${wd}

echo "-= Removing any existing configs =-"
rm -rf ~/.zshrc ~/.vim ~/.vimrc ~/.config/nvim/ ~/.tmux ~/.tmux.conf ~/.javascript-git-ignore-template 2 > /dev/null

#create neovim directory
echo "-= Creating necessary directories =-"
mkdir -p ~/.config/nvim ~/.config/nvim/plugin ~/.config/nvim/plugin ~/.config/nvim/ftplugin ~/.config/nvim/after/ftplugin ~/.config/nvim/after/ftdetect ~/.config/nvim/compiler

echo "-= Symlinking zsrh configs =-"
ln -sf ${wd}/zshrc ~/.zshrc

echo "-= Symlinking tmux configs =-"
ln -sf ${wd}/tmux.conf ~/.tmux.conf

echo "-= Symlinking ideavimrc configs =-"
ln -sf ${wd}/ideavimrc ~/.ideavimrc

echo "-= Symlinking javascript git template =-"
ln -sf ${wd}/javascript-git-ignore-template ~/.javascript-git-ignore-template

echo "-= Symlinking neovim configs =-"
ln -sf ${wd}/nvim/init.vim ~/.config/nvim/init.vim
ln -sf ${wd}/nvim/plugin/settings.vim ~/.config/nvim/plugin/settings.vim
ln -sf ${wd}/nvim/plugin/plugins.vim ~/.config/nvim/plugin/plugins.vim
ln -sf ${wd}/nvim/plugin/mappings.vim ~/.config/nvim/plugin/mappings.vim
ln -sf ${wd}/nvim/plugin/abbreviations.vim ~/.config/nvim/plugin/abbreviations.vim
ln -sf ${wd}/nvim/plugin/statusline.vim ~/.config/nvim/plugin/statusline.vim
ln -sf ${wd}/nvim/plugin/coc.vim ~/.config/nvim/plugin/coc.vim
ln -sf ${wd}/nvim/plugin/fzf.vim ~/.config/nvim/plugin/fzf.vim
ln -sf ${wd}/nvim/plugin/functions.vim ~/.config/nvim/plugin/functions.vim
ln -sf ${wd}/nvim/plugin/colorscheme.vim ~/.config/nvim/plugin/colorscheme.vim
ln -sf ${wd}/nvim/plugin/ale.vim ~/.config/nvim/plugin/ale.vim
ln -sf ${wd}/nvim/plugin/gruvbox.vim ~/.config/nvim/plugin/gruvbox.vim

echo "-= Symlinking nvim/plugin =-"
ln -sf ${wd}/nvim/plugin/strip_trailing_whitespace.vim ~/.config/nvim/plugin/strip_trailing_whitespace.vim

echo "-= Symlinking nvim/ftplugin =-"
ln -sf ${wd}/nvim/ftplugin/txt.vim ~/.config/nvim/ftplugin/txt.vim
ln -sf ${wd}/nvim/ftplugin/clojure.vim ~/.config/nvim/ftplugin/clojure.vim
ln -sf ${wd}/nvim/ftplugin/javascript.vim ~/.config/nvim/ftplugin/javascript.vim
ln -sf ${wd}/nvim/ftplugin/java.vim ~/.config/nvim/ftplugin/java.vim
ln -sf ${wd}/nvim/ftplugin/typescript.vim ~/.config/nvim/ftplugin/typescript.vim
ln -sf ${wd}/nvim/ftplugin/markdown.vim ~/.config/nvim/ftplugin/markdown.vim

echo "-= Symlinking nvim/compiler =-"
ln -sf ${wd}/nvim/compiler/java.vim ~/.config/nvim/compiler/java.vim
ln -sf ${wd}/nvim/compiler/typescript.vim ~/.config/nvim/compiler/typescript.vim
ln -sf ${wd}/nvim/compiler/clojure.vim ~/.config/nvim/compiler/clojure.vim

echo "-= Symlinking nvim/after/ftplugin =-"
ln -sf ${wd}/nvim/after/ftplugin/javascript.vim ~/.config/nvim/after/ftplugin/javascript.vim
ln -sf ${wd}/nvim/after/ftplugin/typescript.vim ~/.config/nvim/after/ftplugin/typescript.vim
ln -sf ${wd}/nvim/after/ftplugin/clojure.vim ~/.config/nvim/after/ftplugin/clojure.vim

echo "-= Symlinking nvim/after/ftdetect =-"
ln -sf ${wd}/nvim/after/ftdetect/javascript.test.vim ~/.config/nvim/after/ftdetect/javascript.test.vim

echo "-= Log out and Log Back In to see changes =-"
