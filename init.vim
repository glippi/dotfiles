call plug#begin('~/.config/nvim/plugged')
"Colorscheme
Plug 'jeffkreeftmeijer/vim-dim'
Plug 'fenetikm/falcon'
Plug 'morhetz/gruvbox'
Plug 'mhartington/oceanic-next'
"Close brackets
Plug 'raimondi/delimitmate'
"ReactJS JSX syntax highlighting
Plug 'chemzqm/vim-jsx-improve'
"Improved syntax for JavaScript
Plug 'othree/yajs.vim'
"Customized vim status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Git in vim
Plug 'tpope/vim-fugitive'
" Surround motion
Plug 'tpope/vim-surround'
"FuzzyFinder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
"AG SilverSurfer
Plug 'rking/ag.vim'
" syntax for TS
Plug 'HerringtonDarkholme/yats.vim'
Plug 'machakann/vim-highlightedyank'
" Coc
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
" My plugins
Plug 'glippi/lognroll-vim'
Plug 'glippi/markabbreviations-vim'
Plug 'glippi/ydkjs-vim'
Plug 'glippi/yarn-vim'
call plug#end()

runtime! partials/*.vim
