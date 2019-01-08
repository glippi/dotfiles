call plug#begin('~/.config/nvim/plugged')
"Colorscheme
Plug 'morhetz/gruvbox'
"Close brackets
Plug 'raimondi/delimitmate'
"Asynchronous linting
Plug 'w0rp/ale'
"ReactJS JSX syntax highlighting
Plug 'chemzqm/vim-jsx-improve'
"Improved syntax for JavaScript
Plug 'othree/yajs.vim'
" syntax for TS
Plug 'HerringtonDarkholme/yats.vim'
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
" Highlight yanked text
Plug 'machakann/vim-highlightedyank'
Plug 'GabrieleLippi/ydkjs-vim'
Plug 'GabrieleLippi/emmex-vim'
call plug#end()

" Highlight jsx syntax even in non .jsx files
let g:jsx_ext_required = 0
" set ag for vimgrep
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

let g:ackprg = 'ag --nogroup --nocolor --column'
