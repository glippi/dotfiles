#!/bin/bash

wd=$(pwd)
pluginDir=${wd}/nvim/plugin
echo ${wd}

echo "-= Install vim-plug for vim =-"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "-= Install vim-plug for neovim =-"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "-= Removing any existing configs =-"
rm -rf ~/.zshrc ~/.vim ~/.vimrc ~/.config/nvim/ ~/.tmux ~/.tmux.conf 2 > /dev/null

#create zsh config
echo "-= Symlinking zsh configs =-"
ln -sf ${wd}/zshrc ~/.zshrc

#create tmux config
echo "-= Symlinking tmux configs =-"
ln -sf ${wd}/tmux.conf ~/.tmux.conf

#create vim config
echo "-= Symlinking ./vimrc =-"
ln -sf ${wd}/vimrc ~/.vimrc

#create neovim directory
echo "-= Creating necessary directories =-"
mkdir -p ~/.config/nvim ~/.config/nvim/plugin ~/.config/nvim/plugin ~/.config/nvim/ftplugin ~/.config/nvim/ftdetect ~/.config/nvim/after/ftplugin ~/.config/nvim/after/ftdetect ~/.config/nvim/compiler

echo "-= Symlinking neovim configs =-"
ln -sf ${wd}/nvim/init.vim ~/.config/nvim/init.vim

echo "-= Symlinking nvim/plugin =-"
ln -sf ${wd}/nvim/plugin/abbreviations.vim ~/.config/nvim/plugin/abbreviations.vim
ln -sf ${wd}/nvim/plugin/colorscheme.vim ~/.config/nvim/plugin/colorscheme.vim
ln -sf ${wd}/nvim/plugin/fugitive.vim ~/.config/nvim/plugin/fugitive.vim
ln -sf ${wd}/nvim/plugin/gruvbox.vim ~/.config/nvim/plugin/gruvbox.vim
ln -sf ${wd}/nvim/plugin/lognroll.vim ~/.config/nvim/plugin/lognroll.vim
ln -sf ${wd}/nvim/plugin/mappings.vim ~/.config/nvim/plugin/mappings.vim
ln -sf ${wd}/nvim/plugin/settings.vim ~/.config/nvim/plugin/settings.vim
ln -sf ${wd}/nvim/plugin/strip_trailing_whitespace.vim ~/.config/nvim/plugin/strip_trailing_whitespace.vim
ln -sf ${wd}/nvim/plugin/tachyons.vim ~/.config/nvim/plugin/tachyons.vim
ln -sf ${wd}/nvim/plugin/lsp-config.vim ~/.config/nvim/plugin/lsp-config.vim
ln -sf ${wd}/nvim/plugin/telescope.vim ~/.config/nvim/plugin/telescope.vim
ln -sf ${wd}/nvim/plugin/treesitter.vim ~/.config/nvim/plugin/treesitter.vim


echo "-= Symlinking nvim/ftplugin =-"
ln -sf ${wd}/nvim/ftplugin/txt.vim ~/.config/nvim/ftplugin/txt.vim
ln -sf ${wd}/nvim/ftplugin/clojure.vim ~/.config/nvim/ftplugin/clojure.vim
ln -sf ${wd}/nvim/ftplugin/javascript.vim ~/.config/nvim/ftplugin/javascript.vim
ln -sf ${wd}/nvim/ftplugin/java.vim ~/.config/nvim/ftplugin/java.vim
ln -sf ${wd}/nvim/ftplugin/typescript.vim ~/.config/nvim/ftplugin/typescript.vim
ln -sf ${wd}/nvim/ftplugin/markdown.vim ~/.config/nvim/ftplugin/markdown.vim
ln -sf ${wd}/nvim/ftplugin/php.vim ~/.config/nvim/ftplugin/php.vim
ln -sf ${wd}/nvim/ftplugin/html.vim ~/.config/nvim/ftplugin/html.vim
ln -sf ${wd}/nvim/ftplugin/tsv.vim ~/.config/nvim/ftplugin/tsv.vim

echo "-= Symlinking nvim/ftdetect =-"
ln -sf ${wd}/nvim/ftdetect/svelte.vim ~/.config/nvim/ftdetect/svelte.vim
ln -sf ${wd}/nvim/ftdetect/tsv.vim ~/.config/nvim/ftdetect/tsv.vim

echo "-= Symlinking nvim/compiler =-"
ln -sf ${wd}/nvim/compiler/java.vim ~/.config/nvim/compiler/java.vim
ln -sf ${wd}/nvim/compiler/typescript.vim ~/.config/nvim/compiler/typescript.vim
ln -sf ${wd}/nvim/compiler/clojure.vim ~/.config/nvim/compiler/clojure.vim
ln -sf ${wd}/nvim/compiler/tex.vim ~/.config/nvim/compiler/tex.vim

echo "-= Symlinking nvim/after/ftplugin =-"
ln -sf ${wd}/nvim/after/ftplugin/javascript.vim ~/.config/nvim/after/ftplugin/javascript.vim
ln -sf ${wd}/nvim/after/ftplugin/typescript.vim ~/.config/nvim/after/ftplugin/typescript.vim
ln -sf ${wd}/nvim/after/ftplugin/clojure.vim ~/.config/nvim/after/ftplugin/clojure.vim

echo "-= Symlinking nvim/after/ftdetect =-"
ln -sf ${wd}/nvim/after/ftdetect/javascript.test.vim ~/.config/nvim/after/ftdetect/javascript.test.vim

echo "-= Log out and Log Back In to see changes =-"
