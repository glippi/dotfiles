call plug#begin('~/.config/nvim/plugged')
Plug 'raimondi/delimitmate'
Plug 'morhetz/gruvbox'
" Asynchronous linting
Plug 'w0rp/ale'
" ReactJS JSX syntax highlighting
Plug 'chemzqm/vim-jsx-improve'
" Plug 'mxw/vim-jsx'
" Reason ML syntax
Plug 'reasonml-editor/vim-reason-plus'
" Improved syntax highlighting and indentation
Plug 'othree/yajs.vim'
Plug 'mhartington/oceanic-next'
" Customized vim status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mileszs/ack.vim'
call plug#end()

" ============================================================================ "
" ===                           EDITING OPTIONS                            === "
" ============================================================================ "
" Required for operations modifying multiple buffers like rename.
set hidden

set path+=**
" set wildignore=**/node_modules/**
" Line Numbers
set nu
" Relative numbers
set relativenumber

" Yank and paste with the system clipboard
set clipboard=unnamed

" Hides buffers instead of closing them
set hidden

" Insert spaces when TAB is pressed.
set expandtab

" Change number of spaces that a <Tab> counts for during editing ops
set softtabstop=2

" Indentation amount for < and > commands.
set shiftwidth=2

" do not wrap long lines by default
set wrap
set linebreak
" Highlight current line
set nocursorline

set lazyredraw

set showmatch
set matchtime=10000

"" Directories for swp files
set nobackup
"prevent creation of swap file
set noswapfile

set mouse=nvi
set nottimeout
" === Ale === "
" Enable language-specif linters
let g:ale_linters = {
\ 'javascript' : ['eslint']
\ }

" Customize warning/error signs
let g:ale_sign_error = '!?'
let g:ale_sign_warning = '*'

" Custom error format
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" Don't lint on text change, only on save
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_save = 1
let g:ale_lint_on_enter = 1

" === vim-javascript === "

" === vim-jsx === "
" Highlight jsx syntax even in non .jsx files
let g:jsx_ext_required = 0
" ============================================================================ "
" ===                                UI                                    === "
" ============================================================================ "

" Enable true color support
set termguicolors

" Editor theme
set background=dark
colorscheme gruvbox

" Vim airline theme
let g:airline_theme='gruvbox'
let g:airline_solarized_bg='dark'

" Change vertical split character to not leave small spaces between lines
" (warning) - This could vary based on font used
set fillchars+=vert:│

" Set preview window to appear at bottom
set splitbelow

" === Search === "
" ignore case when searching
set ignorecase

" if the search string has an upper case letter in it, the search will be case sensitive
set smartcase

" Automatically re-read file if a change was detected outside of vim
set autoread

"Open .vimrc in split window
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
"Refresh .vimrc in order to take advantage of changes
nnoremap <leader>sv :source $MYVIMRC<cr>

"surround word under cursor with "
nnoremap <leader>" bi"<esc>ea"<esc>l
"surround word under cursor with `
nnoremap <leader>` bi`<esc>ea`<esc>l
"surround word under cursor with '
nnoremap <leader>' bi'<esc>ea'<esc>l
"surround word under cursor with []
nnoremap <leader>[ bi[<esc>ea]<esc>l
"surround word under cursor with {}
nnoremap <leader>{ bi{<esc>ea}<esc>l
"delete " surround word under cursor
nnoremap <leader>ds BxEx

" Console log from insert mode; console.log()  Puts focus inside parentheses
imap cll console.log()<Esc>==f(a
" Console log from visual mode on next line, puts visual selection inside parentheses
vmap cll yocll<Esc>p
" Console log from normal mode, inserted on next line with word your on inside parentheses
nmap cll yiwocll<Esc>p

"JS Debugger
imap break debuggerjk
"Debugger from visual mode
vmap break breakjk
"Debugger from normal mode
nmap break obreakjk

tnoremap <Leader>sh <C-\><C-n>:vsplit <CR>:term<CR>i
noremap <Leader>sh :vsplit <CR>:term<CR>i
inoremap <Leader>sh <Esc>:vsplit <CR>:term<CR>i
"Remap hjkl to use them in INSERT MODE
imap <C-h> <LEFT>
imap <C-j> <DOWN>
imap <C-k> <UP>
imap <C-l> <RIGHT>

command WQ !wq
command Wq !wq
command W !w
command Q !q

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

let g:ackprg = 'ag --nogroup --nocolor --column'

"lorem ipsum
iabbrev lis Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Integer diam augue, egestas quis, aliquam ut, venenatis ut, quam.

iabbrev lim Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Integer diam augue, egestas quis, aliquam ut, venenatis ut, quam. Quisque ut augue. Integer non neque a lectus venenatis fermentum. 

iabbrev lix Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Integer diam augue, egestas quis, aliquam ut, venenatis ut, quam. Quisque ut augue. Integer non neque a lectus venenatis fermentum. Morbi quis eros nec elit molestie vehicula. Integer nunc lacus, sodales posuere, rutrum quis, blandit at, mi. 

iabbrev erc import React from 'react' <CR><CR>export default class <esc>i extends React.Component {<CR>  render() {<CR>  return (<CR>)<CR>}<CR>}<esc>5k^eeea
