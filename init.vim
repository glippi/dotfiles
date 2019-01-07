call plug#begin('~/.config/nvim/plugged')
"Colorscheme
Plug 'jeffkreeftmeijer/vim-dim'
Plug 'fenetikm/falcon'
Plug 'morhetz/gruvbox'
Plug 'mhartington/oceanic-next'
"Close brackets
Plug 'raimondi/delimitmate'
"Asynchronous linting
Plug 'w0rp/ale'
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
Plug 'GabrieleLippi/ydkjs-vim'
Plug 'GabrieleLippi/emmex-vim'
" syntax for TS
Plug 'HerringtonDarkholme/yats.vim'
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
set clipboard=unnamedplus

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
"Refresh .vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

" jk to esc
inoremap jk <esc>

" Console log from insert mode; console.log()  Puts focus inside parentheses
imap cll console.log({ })<Esc>==f{a<space>
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

" create a new tab and open a terminal window in insert mode
nnoremap <leader>te :tabnew<esc>:terminal<CR>i

" create a new tab and open a terminal and start yarn
nnoremap <leader>ys :tabnew<esc>:terminal<CR>iyarn start<CR>

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
"" Git
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gc :Gcommit<CR>
noremap <Leader>gp :Git ps<CR>
noremap <Leader>gl :Git pl<CR>
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gvdiff<CR>
noremap <Leader>gr :Gremove<CR>
" open new tab with the last commit to explore
nnoremap <silent> <leader>ge :Gtabedit HEAD^{}<CR>
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

function! s:PlaceholderImgTag(size)
  let url = 'http://dummyimage.com/' . a:size . '/000000/555555'
  let [width,height] = split(a:size, 'x')
  execute "normal a<img src=\"".url."\" width=\"".width."\" height=\"".height."\" />"
  endfunction
command! -nargs=1 PlaceholderImgTag call s:PlaceholderImgTag(<f-args>)

"*****************************************************************************
"" end
"*****************************************************************************

tnoremap <Esc> <C-\><C-n>
nnoremap <leader>v :vs<CR>
nnoremap <leader>h :sp<CR>

" Better display for messages
set cmdheight=2

" Remove Trailing spaces on save
autocmd BufWritePre <buffer> %s/\s\+$//e

" View navigation
" Resize vertical view splits with + & -
nnoremap <silent> + :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> - :exe "resize " . (winheight(0) * 2/3)<CR>
" Resize horizontal view splits with
nnoremap <silent> ] :vertical resize +10<CR>
nnoremap <silent> [ :vertical resize -10<CR>

"Cycle to views with double tab
nnoremap <silent> <Tab><Tab> <C-w>w

"Navigating through windows
nnoremap <silent> <Tab><Up> :wincmd k<CR>
nnoremap <silent> <Tab><Down> :wincmd j<CR>
nnoremap <silent> <Tab><Left> :wincmd h<CR>
nnoremap <silent> <Tab><Right> :wincmd l<CR>

" TypeScript filetype
autocmd BufEnter,BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx

" Making `j` and `k` work on visual lines
nnoremap k gk
nnoremap j gj
nnoremap gk k
nnoremap gj j

" create new file in the current directory
nnoremap <leader>nf :e %:h/

" FZF
let g:fzf_layout = { 'window': '40split enew' }
" use ag for ignoring .git and node_modules
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
" search files
nnoremap <c-p> :Files<CR>
" search buffers
nnoremap <c-b> :Buffers<CR>
" search commits
nnoremap <c-g> :Commits<CR>
" search commits in current buffer
nnoremap <c-bc> :BCommits<CR>
" close with esc
autocmd! FileType fzf tnoremap <buffer> <esc> <c-c>

" Ale
highlight ALEWarning ctermbg=DarkMagenta
highlight ALEError ctermbg=Red
highlight ALEErrorSign ctermfg=9
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '*'
" Custom error format
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint', 'prettier'],
\   'typescript': ['tslint', 'prettier'],
\   'css': ['prettier'],
\}
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'typescript': ['tsserver'],
\}
" ignore tslint
"let g:ale_linters_ignore = {'typescript': ['tslint']}
" Don't lint on text change, only on save
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_save = 1
let g:ale_lint_on_enter = 1
" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:airline#extensions#ale#enabled = 1
noremap <c-]> :ALEGoToDefinition<CR>
noremap <Leader>af :ALEFix<CR>
noremap <Leader>ar :ALEFindReferences<CR>
noremap <Leader>ah :ALEHover<CR>
" navigate between errors
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
"function! CompileTS()
"  if &filetype == 'typescript.tsx' || &filetype == 'typescript.ts'|| &filetype == 'typescript'
"    execute "!tsc index.ts"
"  else
"    echom "not a ts file"
"  endif
"endfunction
"
"autocmd BufWritePre <buffer> call CompileTS()
 " ~ Remove searchhighlight ~
nnoremap <silent> <backspace> :nohlsearch<cr>
 " ~ Goto EOL in insert mode ~
inoremap <c-e> <esc>A
 " ~ New line ~
imap <silent> <c-return> <esc>o<Paste>
