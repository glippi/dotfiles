if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
      autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif

call plug#begin('~/.vim/plugged')
Plug 'glippi/lognroll-vim'
Plug 'glippi/markabbreviations-vim'
Plug 'phpactor/phpactor'
Plug 'burner/vim-svelte'

set incsearch hlsearch relativenumber smarttab expandtab
set nocompatible noswapfile
set shiftwidth=2 tabstop=2 softtabstop=2

filetype indent on

nnoremap req cawconst<space><esc>pa<space>=<space>require('');<esc>F(lp<esc>$
nnoremap <M-C-c> oHOLA

call plug#end()
