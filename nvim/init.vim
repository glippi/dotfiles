call plug#begin('~/.config/nvim/plugged')
"colorscheme
Plug 'fenetikm/falcon'
Plug 'morhetz/gruvbox'

"JS/TS
Plug 'leafgarland/typescript-vim'
Plug 'chemzqm/vim-jsx-improve'
Plug 'othree/yajs.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'othree/es.next.syntax.vim'

"utilities
Plug 'raimondi/delimitmate'
Plug 'machakann/vim-highlightedyank'
Plug 'rking/ag.vim'
Plug 'triglav/vim-visual-increment'

"fuzzyfinder
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plug 'junegunn/fzf.vim'

"tpope others
Plug 'tpope/vim-fugitive'

"my plugins
Plug 'glippi/lognroll-vim'
Plug 'glippi/markabbreviations-vim'
Plug 'glippi/ydkjs-vim'
Plug 'glippi/yarn-vim'
Plug 'glippi/javabbreviations-vim'
Plug 'glippi/tachyons-vim', { 'do': 'sh install.sh' }


"nvim v5
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
call plug#end()
