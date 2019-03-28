call plug#begin('~/.config/nvim/plugged')
"Kotlin syntax
Plug 'udalov/kotlin-vim'
"Clojure syntax
Plug 'guns/vim-clojure-highlight'
Plug 'guns/vim-clojure-static'
Plug 'guns/vim-sexp'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
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
"Customized vim status line
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"tpope plugins
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-classpath'
Plug 'tpope/vim-apathy'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-salve'

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
"Java
Plug 'artur-shaik/vim-javacomplete2'
" My plugins
Plug 'glippi/lognroll-vim'
Plug 'glippi/markabbreviations-vim'
Plug 'glippi/ydkjs-vim'
Plug 'glippi/yarn-vim'
Plug 'glippi/javabbreviations-vim'
Plug 'glippi/tachyons-vim', { 'do': 'sh install.sh' }
call plug#end()
