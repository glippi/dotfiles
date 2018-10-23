call plug#begin('~/.config/nvim/plugged')
"Colorscheme
Plug 'fenetikm/falcon'
Plug 'morhetz/gruvbox'
Plug 'mhartington/oceanic-next'
"Close brackets
Plug 'raimondi/delimitmate'
"Asynchronous linting
Plug 'w0rp/ale'
"ReactJS JSX syntax highlighting
Plug 'chemzqm/vim-jsx-improve'
"Reason ML syntax
Plug 'reasonml-editor/vim-reason-plus'
"Improved syntax highlighting and indentation
Plug 'othree/yajs.vim'
"Customized vim status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Git in vim
Plug 'tpope/vim-fugitive'
Plug 'jreybert/vimagit'
"Display css color in css files
Plug 'gko/vim-coloresque'
" Surround motion
Plug 'tpope/vim-surround'
"FuzzyFinder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
"AG SilverSurfer
Plug 'rking/ag.vim'
Plug 'GabrieleLippi/ydkjs-vim'
" Language server for TS
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh' }
" For async completion
Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/denite.nvim'
Plug 'machakann/vim-highlightedyank'
call plug#end()

filetype plugin indent on

" ============================================================================ "
" ===                           EDITING OPTIONS                            === "
" ============================================================================ "
" Required for operations modifying multiple buffers like rename.
set hidden

set path+=**
setlocal suffixesadd+=.js,.jsx
set wildignore=**/node_modules/**
" Line Numbers
set nu
" Relative numbers
set relativenumber

" Yank and paste with the system clipboard
set clipboard=unnamed

" Insert spaces when TAB is pressed.
set expandtab

" Insert 2 spaces even if isn't related to shift code
set smarttab

" Change number of spaces that a <Tab> counts for during editing ops
set softtabstop=2

" Indentation amount for < and > commands.
set shiftwidth=2

" do not wrap long lines by default
set nowrap
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
"let g:falcon_background = 0
"let g:falcon_inactive = 1
"colorscheme falcon
set background=dark
colorscheme gruvbox

" Vim airline theme
"let g:falcon_airline = 1
let g:airline_theme = 'gruvbox'
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
" Change vertical split character to not leave small spaces between lines
" (warning) - This could vary based on font used
set fillchars+=vert:│

" Set preview window to appear at bottom
set splitbelow
" Vertical split to right of current.
set splitright

" === Search === "
" ignore case when searching
set ignorecase

" if the search string has an upper case letter in it, the search will be case sensitive
set smartcase

" highlight as you type
set inccommand=nosplit

" Automatically re-read file if a change was detected outside of vim
set autoread

" Add the g flag to search/replace by default
set gdefault

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

" jk to esc
inoremap jk <esc>

" Console log from insert mode; console.log()  Puts focus inside parentheses
imap cll console.log({ })<Esc>==f{a 
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

" If statement check
nmap !if yiwoif (!)<Esc>F!pA return null

tnoremap <Leader>sh <C-\><C-n>:vsplit <CR>:term<CR>i
noremap <Leader>sh :vsplit <CR>:term<CR>i
inoremap <Leader>sh <Esc>:vsplit <CR>:term<CR>i

" Cycle through buffers

let g:nvim_typescript#max_completion_detail=100
nnoremap <C-p> :execute ":buffer ".(bufnr("%") - 1)<CR>

" create a new tab and open a terminal window in insert mode
nnoremap <leader>te :tabnew<esc>:terminal<CR>i

" create a new tab and open a terminal and start yarn
nnoremap <leader>ys :tabnew<esc>:terminal<CR>yarn start<CR>

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

let g:ackprg = 'ag --nogroup --nocolor --column'

"lorem ipsum
iabbrev lis Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Integer diam augue, egestas quis, aliquam ut, venenatis ut, quam.

iabbrev lim Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Integer diam augue, egestas quis, aliquam ut, venenatis ut, quam. Quisque ut augue. Integer non neque a lectus venenatis fermentum. 

iabbrev lix Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Integer diam augue, egestas quis, aliquam ut, venenatis ut, quam. Quisque ut augue. Integer non neque a lectus venenatis fermentum. Morbi quis eros nec elit molestie vehicula. Integer nunc lacus, sodales posuere, rutrum quis, blandit at, mi. 

" React
iabbrev ire import React from 'react'

iabbrev erc import React from 'react' <CR><CR>export default class <esc>i extends React.Component {<CR>  render() {<CR>  return (<CR>)<CR>}<CR>}<esc>5k^eeea

" flex
iabbrev flow flex flex-row
iabbrev floc flex flex-column

" Mobx-react
iabbrev injob import { inject, observer } from 'mobx-react'

iabbrev io @inject('')<CR>@observer<esc>1k^f'a


set includeexpr=LoadMainNodeModule(v:fname)

noremap <leader>ss :call StripWhitespace()
" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv
"" txt
augroup vimrc-wrapping
  autocmd!
  autocmd BufRead,BufNewFile *.txt call s:setupWrapping()
augroup END
"Let ALE run prettier with local config on save
let g:ale_fixers = {'javascript': ['eslint']}
highlight ALEWarning ctermbg=DarkMagenta
highlight ALEError ctermbg=Red
"let g:ale_fixers['javascript'] = ['prettier']
let g:ale_fix_on_save = 1
"" Git
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gc :Gcommit<CR>
noremap <Leader>gps :Git ps<CR>
noremap <Leader>gpl :Git pl<CR>
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gvdiff<CR>
noremap <Leader>gr :Gremove<CR>
"" Abbreviations
"*****************************************************************************
"" no one is really happy until you have this shortcuts
cnoreabbrev f find
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
"" Functions
"*****************************************************************************

if !exists('*s:setupWrapping')
  function s:setupWrapping()
    set wrap
    set wm=2
    set textwidth=79
  endfunction
endif

function! LoadMainNodeModule(fname)
    let nodeModules = "./node_modules/"
    let packageJsonPath = nodeModules . a:fname . "/package.json"

    if filereadable(packageJsonPath)
        return nodeModules . a:fname . "/" . json_decode(join(readfile(packageJsonPath))).main
    else
        return nodeModules . a:fname
    endif
endfunction

" Strip trailing whitespace (,ss)
function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction

"searches the word under the cursor through the project tree using fzf and Ag
noremap <Leader>d :exe ':Ag ' . expand('<cword>')<CR>
"opens up the fzf Ag search
noremap <C-f> :Ag
" Find file on buffer (open file)
nnoremap <silent> <leader>b :Buffers<CR>
" Find and open files
nnoremap <silent> <leader>e :FZF -m<CR>


"" fzf.vim
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"

" The Silver Searcher
if executable('ag')
  let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
  set grepprg=ag\ --nogroup\ --nocolor
endif

" Enable deoplete at startup
let g:deoplete#enable_at_startup = 1
let g:echodoc_enable_at_startup = 1
let g:nvim_typescript#max_completion_detail=100
tnoremap <Esc> <C-\><C-n>
