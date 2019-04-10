call plug#begin('~/.config/nvim/plugged')
"Kotlin syntax
Plug 'udalov/kotlin-vim'
"Clojure syntax
Plug 'guns/vim-clojure-highlight'
Plug 'guns/vim-clojure-static'
Plug 'guns/vim-sexp'
"Colorscheme
Plug 'vim-scripts/bw.vim'
Plug 'jeffkreeftmeijer/vim-dim'
Plug 'robertmeta/nofrils'
Plug 'fenetikm/falcon'
Plug 'morhetz/gruvbox'
Plug 'LuRsT/austere.vim'
Plug 'mhartington/oceanic-next'
"Close brackets
Plug 'raimondi/delimitmate'
"ReactJS JSX syntax highlighting
Plug 'chemzqm/vim-jsx-improve'
"Improved syntax for JavaScript
Plug 'othree/yajs.vim'

"tpope plugins
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-salve'
Plug 'tpope/vim-classpath'

"FuzzyFinder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-emoji'

"AG SilverSurfer
Plug 'rking/ag.vim'

" syntax for TS
Plug 'HerringtonDarkholme/yats.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'w0rp/ale'
Plug 'natebosch/vim-lsc'

" My plugins
Plug 'glippi/lognroll-vim'
Plug 'glippi/markabbreviations-vim'
Plug 'glippi/ydkjs-vim'
Plug 'glippi/yarn-vim'
Plug 'glippi/javabbreviations-vim'
Plug 'glippi/tachyons-vim', { 'do': 'sh install.sh' }
call plug#end()
