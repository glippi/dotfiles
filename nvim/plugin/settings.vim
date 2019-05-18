set title                                                                       "change the terminal's title
set number                                                                      "Line numbers are good
set relativenumber                                                              "Show numbers relative to current line
set gdefault                                                                    "Set global flag for search and replace
set guicursor=a:blinkon500-blinkwait500-blinkoff500                             "Set cursor blinking rate
set cursorline                                                                  "Highlight current line
set smartcase                                                                   "Smart case search if there is uppercase
set ignorecase                                                                  "case insensitive search
set mouse=nvi                                                                   "Enable mouse usage
set showmatch                                                                   "Highlight matching bracket
set nostartofline                                                               "Jump to first non-blank character
set timeoutlen=1000 ttimeoutlen=0                                               "Reduce Command timeout for faster escape and O
set wrap                                                                        "Enable word wrap
set linebreak                                                                   "Wrap lines at convenient points
set list                                                                        "Enable listchars
set lazyredraw                                                                  "Do not redraw on registers and macros
set hidden                                                                      "Hide buffers in background
set splitright                                                                  "Set up new vertical splits positions
set splitbelow                                                                  "Set up new horizontal splits positions
set inccommand=nosplit                                                          "Show substitute changes immidiately in separate split
set updatetime=300                                                              "Smaller updatetime for CursorHold & CursorHoldI
set signcolumn=yes                                                              "Always show signcolumns
set shortmess+=c                                                                "Disable completion menu messages in command line
set undofile                                                                    "Keep undo history across sessions, by storing in file
set noswapfile                                                                  "Disable creating swap file
set nobackup                                                                    "Disable saving backup file
set nowritebackup                                                               "Disable writing backup file

set breakindent                                                                 "Preserve indent on line wrap
set smartindent                                                                 "Use smarter indenting
set nofoldenable                                                                "Disable folding by default
set foldmethod=syntax                                                           "When folding enabled, use syntax method

set scrolloff=8                                                                 "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=5


set wildignore=**/node_modules/**
" Insert spaces when TAB is pressed.
set expandtab
" Yank and paste with the system clipboard
set clipboard=unnamedplus
" Change number of spaces that a <Tab> counts for during editing ops
set softtabstop=2

" Indentation amount for < and > commands.
set shiftwidth=2
set matchtime=10000
set nottimeout
" Better display for messages
set cmdheight=2
"  just pasting a whole buffer of text
set pastetoggle=<F2>

set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
set completefunc=emoji#complete
