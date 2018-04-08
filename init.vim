call plug#begin('~/.config/nvim/plugged')
"Color schemes
Plug 'mhartington/oceanic-next'
Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'
Plug 'fenetikm/falcon'
"NERDTree
Plug 'scrooloose/nerdtree'
Plug 'bronson/vim-trailing-whitespace'
Plug 'sheerun/vim-polyglot'
"FuzzyFinder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"AG SilverSurfer
Plug 'rking/ag.vim'
"Async syntax checking
Plug 'w0rp/ale'
"Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Closing brackets
Plug 'jiangmiao/auto-pairs'
Plug 'Raimondi/delimitMate'
"Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
"Surround
Plug 'tpope/vim-surround'
"Tmux integration
Plug 'christoomey/vim-tmux-navigator'
"Md syntax
Plug 'plasticboy/vim-markdown'
"HTML5 syntax
Plug 'othree/html5.vim'
"YAML syntax
Plug 'stephpy/vim-yaml'
Plug 'alvan/vim-closetag'
"JSX Syntax
"Plug 'neoclide/vim-jsx-improve'
Plug 'larsbs/vim-xmll'
"JS syntax
Plug 'othree/yajs.vim'
"Jsx integration
Plug 'mxw/vim-jsx'
"Font Icons
Plug 'ryanoasis/vim-devicons'
"Use neovim async capabilities for searching with silver surfer
Plug 'mhinz/vim-grepper'
"Multiple cursor
Plug 'terryma/vim-multiple-cursors'
call plug#end()

"*****************************************************************************
"" HARD-MODE ON
"*****************************************************************************
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
imap <Up> <NOP>
imap <Down> <NOP>
imap <Left> <NOP>
imap <Right> <NOP>
"*****************************************************************************
"" Visual Settings
"*****************************************************************************
syntax enable
set number
set mousemodel=popup
set guioptions=egmrti
set gfn=Monospace\ 10
set textwidth=80
set relativenumber
set t_Co=256
set termguicolors
set background=dark
colorscheme OceanicNext

"*****************************************************************************
"" Basic Setup
"*****************************************************************************"
"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set bomb
set binary
" Automatically load a file changed outside
set autoread
" Highlight current line
set cursorline
"" Fix backspace indent
set backspace=indent,eol,start
" Maximum width of text that is being inserted
set textwidth=79
"" Tabs. May be overriten by autocmd rules
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab


"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"Display row's number
set number
" Show matching brackets.
set showmatch
" Continue comment marker in new lines.
set formatoptions+=o
" Prevents inserting two spaces after punctuation on a join (J)
set nojoinspaces
"More natural splits
" Horizontal split below current.
set splitbelow
" Vertical split to right of current.
set splitright


" The Silver Searcher
if executable('ag')
    " Use ag over grep
    set grepprg=ag\ --nogroup\ --nocolor

    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
endif
let g:ackprg = 'ag --vimgrep'


"Let ALE run prettier with local config on save
let g:ale_fixers = {'javascript': ['eslint']}
highlight ALEWarning ctermbg=DarkMagenta
highlight ALEError ctermbg=Red
"let g:ale_fixers['javascript'] = ['prettier']
let g:ale_fix_on_save = 1





"*****************************************************************************
"" Mappings
"*****************************************************************************
"Map leader to ,
let mapleader = ','
nnoremap <C-p> :FZF<CR>
"Remap ESC in order to use it in  terminal mode
tnoremap <Esc> <C-\><C-n>
"Use ; for commands
nnoremap ; :
"Use Q to execute default register
nnoremap Q @q
"Jump to a specific line by hitting the number and 'enter'
nnoremap <CR> G
"Replace all words that are equal to that is actually under the cursor
nnoremap <leader>d :%s/\<<C-r><C-w>\>//c<Left><Left>
"NORMAL MODE: Delete all line from cursor behind
nnoremap <leader><BS> d0
"INSERT MODE: Delete all line from cursor behind
inoremap <C-BS> <C-O>d0
"Save file shortcut from INSERT MODE
imap <C-s>  <Esc> :w! <CR>
" Esc in insert mode
inoremap jj <ESC>
"Bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

"" Opens an edit command with the path of the currently edited file filled in
noremap <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

"" Opens a tab edit command with the path of the currently edited file filled
noremap <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

"" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"Remap hjkl to use them in INSERT MODE
imap <C-h> <LEFT>
imap <C-j> <DOWN>
imap <C-k> <UP>
imap <C-l> <RIGHT>
"" Switching windows
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

"" Split
noremap <Leader>h :<C-u>split
noremap <Leader>v :<C-u>vsplit

"" Git
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gc :Gcommit<CR>
noremap <Leader>gsh :Gpush<CR>
noremap <Leader>gll :Gpull<CR>
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gvdiff<CR>
noremap <Leader>gr :Gremove<CR>

"" Copy/Paste/Cut
if has('unnamedplus')
    set clipboard=unnamed,unnamedplus
endif

noremap YY "+y<CR>
noremap <leader>p "+gP<CR>
noremap XX "+x<CR>

if has('macunix')
    " pbcopy for OSX copy/paste
    vmap <C-x> :!pbcopy<CR>
    vmap <C-c> :w !pbcopy<CR><CR>
endif

"javascript
let g:javascript_enable_domhtmlcss = 1
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0


" Console log from insert mode; console.log()  Puts focus inside parentheses
imap cll console.log()<Esc>==f(a
" Console log from visual mode on next line, puts visual selection inside parentheses
vmap cll yocll<Esc>p
" Console log from normal mode, inserted on next line with word your on inside parentheses
nmap cll yiwocll<Esc>p

"JS Debugger
imap break debugger<Esc>
"Debugger from visual mode
vmap break break<Esc>
"Debugger from normal mode
nmap break obreak<Esc>

" Clear search highlight
nnoremap <leader><space> :noh<CR>
" 0 is easier. ^ is more useful.
nnoremap 0 ^
nnoremap ^ 0
"capitalize current word
nnoremap <leader>U mqviwU`q
"lower case current word
nnoremap <leader>u mqviwUviw~`q

filetype plugin on
set omnifunc=syntaxcomplete#Complete
set completeopt=longest,menu

inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' : \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' : \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

"Integration Tmux and NVim
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> <BS> :TmuxNavigateLeft<cr>
" Write all buffers before navigating from Vim to tmux pane
let g:tmux_navigator_save_on_switch = 1
let g:vim_markdown_frontmatter = 1
nnoremap <C-Left> :vertical resize -1<CR>
nnoremap <C-Right> :vertical resize +1<CR>
nnoremap <C-Up> :resize -1<CR>
nnoremap <C-Down> :resize +1<CR>

nmap <Leader><Leader> <c-^>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprev<CR>
set mouse=r
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

" opens up the fzf buffer search which I use to navigate between open buffers
noremap <Leader>b :ls<CR>:b<Space>
"opens up the fzf most-recently-used file search
noremap <Leader>h :History<CR>

"opens up the fzf Ag search
noremap <C-f> :Ag

"searches the word under the cursor through the project tree using fzf and Ag
noremap <Leader>d :exe ':Ag ' . expand('<cword>')<CR>
" Quickly create a new terminal in a new tab
tnoremap <Leader>c <C-\><C-n>:tab new<CR>:term<CR>i
noremap <Leader>c :tab new<CR>:term<CR>i
inoremap <Leader>c <Esc>:tab new<CR>:term<CR>i

tmap jj <ESC>

"" Disable the blinking cursor.
set gcr=a:blinkon0
set scrolloff=3

"" Status bar
set laststatus=2

"" Use modeline overrides
set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F

set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

if exists("*fugitive#statusline")
  set statusline+=%{fugitive#statusline()}
endif

"*****************************************************************************
"" VIM AIRLINE
"*****************************************************************************
let g:airline_theme = 'oceanicnext'
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_left_sep          = '▶'
let g:airline_left_alt_sep      = '»'
let g:airline_right_sep         = '◀'
let g:airline_right_alt_sep     = '«'
let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
let g:airline#extensions#readonly#symbol   = '⊘'
let g:airline#extensions#linecolumn#prefix = '¶'
let g:airline#extensions#paste#symbol      = 'ρ'
let g:airline_symbols.linenr    = '␊'
let g:airline_symbols.branch    = '⎇'
let g:airline_symbols.paste     = 'ρ'
let g:airline_symbols.paste     = 'Þ'
let g:airline_symbols.paste     = '∥'
let g:airline_symbols.whitespace = 'Ξ'
"*****************************************************************************
"" Abbreviations
"*****************************************************************************
"" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

"*****************************************************************************
" NERD TREE CONFIG
"*****************************************************************************
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 50
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
nnoremap <silent> <F2> :NERDTreeFind<CR>
nnoremap <silent> <F3> :NERDTreeToggle<CR>

"*****************************************************************************
"" Autocmd Rules
"*****************************************************************************
"" The PC is fast enough, do syntax highlight syncing from start unless 200 lines
augroup vimrc-sync-fromstart
  autocmd!
  autocmd BufEnter * :syntax sync maxlines=200
augroup END

"" Remember cursor position
augroup vimrc-remember-cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

"" txt
augroup vimrc-wrapping
  autocmd!
  autocmd BufRead,BufNewFile *.txt call s:setupWrapping()
augroup END

"" make/cmake
augroup vimrc-make-cmake
  autocmd!
  autocmd FileType make setlocal noexpandtab
  autocmd BufNewFile,BufRead CMakeLists.txt setlocal filetype=cmake
augroup END
