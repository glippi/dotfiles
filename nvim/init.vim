call plug#begin('~/.config/nvim/plugged')
"colorscheme
Plug 'fenetikm/falcon'
Plug 'morhetz/gruvbox'

"JS/TS
Plug 'leafgarland/typescript-vim'
Plug 'chemzqm/vim-jsx-improve'
Plug 'othree/yajs.vim'
Plug 'othree/es.next.syntax.vim'
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}

"clojure
Plug 'guns/vim-clojure-highlight'
Plug 'guns/vim-clojure-static'
Plug 'guns/vim-sexp'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-salve'

"kotlin
Plug 'udalov/kotlin-vim'

"go
Plug 'fatih/vim-go'

"utilities
Plug 'raimondi/delimitmate'
Plug 'machakann/vim-highlightedyank'
Plug 'rking/ag.vim'
Plug 'triglav/vim-visual-increment'

"Plug 'w0rp/ale'
Plug 'jpalardy/vim-slime'

"fuzzyfinder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

"tpope others
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-classpath'

"my plugins
Plug 'glippi/lognroll-vim'
Plug 'glippi/markabbreviations-vim'
Plug 'glippi/ydkjs-vim'
Plug 'glippi/yarn-vim'
Plug 'glippi/javabbreviations-vim'
Plug 'glippi/tachyons-vim', { 'do': 'sh install.sh' }
call plug#end()
