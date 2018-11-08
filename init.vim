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
"Improved syntax for JavaScript
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
Plug 'GabrieleLippi/jsx-tags-vim'
" Language server for TS
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh' }
" For async completion
Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/denite.nvim'
"Display function signature in cmd line
Plug 'Shougo/echodoc.vim'
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

" === Ale === "
"Let ALE run prettier with local config on save
highlight ALEWarning ctermbg=DarkMagenta
highlight ALEError ctermbg=Red

" Enable language-specif linters
let g:ale_linters = {
\ 'javascript' : ['eslint'],
\ 'typescript' : ['tslint'],
\ }
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint', 'prettier'],
\   'typescript': ['tslint', 'prettier'],
\   'css': ['prettier'],
\}

" Customize warning/error signs
let g:ale_sign_error = '!?'
let g:ale_sign_warning = '*'

" Custom error format
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" Don't lint on text change, only on save
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_save = 1
"let g:ale_lint_on_enter = 1

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1


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
"Refresh .vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

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
"" Git
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gc :Gcommit<CR>
noremap <Leader>gp :Git ps<CR>
noremap <Leader>gl :Git pl<CR>
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

" Deoplete ------------------------------------------------------------------{{{

" enable deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_delay = 0
let g:echodoc_enable_at_startup=1
let g:nvim_typescript#max_completion_detail=100
let g:echodoc_enable_at_startup = 1
set splitbelow
set completeopt+=menuone,noinsert,noselect
set completeopt-=preview
" autocmd CompleteDone * pclose
let g:deoplete#file#enable_buffer_path=1
call deoplete#custom#source('buffer', 'mark', 'ℬ')
call deoplete#custom#source('tern', 'mark', '')
call deoplete#custom#source('omni', 'mark', '⌾')
call deoplete#custom#source('file', 'mark', '')
call deoplete#custom#source('jedi', 'mark', '')
call deoplete#custom#source('neosnippet', 'mark', '')
call deoplete#custom#source('LanguageClient', 'mark', '')
call deoplete#custom#source('typescript',  'rank', 630)
call deoplete#custom#source('_', 'matchers', ['matcher_cpsm'])
" call deoplete#custom#source('_', 'sorters', [])
let g:deoplete#omni_patterns = {
      \ 'html': '',
      \ 'css': '',
      \ 'scss': ''
      \}
function! Preview_func()
  if &pvw
    setlocal nonumber norelativenumber
   endif
endfunction
autocmd WinEnter * call Preview_func()
let g:deoplete#ignore_sources = {'_': ['around', 'buffer' ]}
"}}}

" Denite --------------------------------------------------------------------{{{
let s:menus = {}
call denite#custom#option('_', {
      \ 'prompt': '❯',
      \ 'winheight': 10,
      \ 'updatetime': 1,
      \ 'auto_resize': 0,
      \ 'highlight_matched_char': 'Underlined',
      \ 'highlight_mode_normal': 'CursorLine',
      \ 'reversed': 1,
      \})
call denite#custom#option('TSDocumentSymbol', {
      \ 'prompt': ' @' ,
      \})
call denite#custom#option('TSWorkspaceSymbol', {
      \ 'prompt': ' #' ,
      \})

      call denite#custom#source('file_rec', 'vars', {
      \'command': ['rg', '--files', '--glob', '!.git'],
      \'sorters':['sorter_sublime'],
      \'matchers': ['matches_cpsm']
      \})
"     \ 'command': ['ag', '--follow','--nogroup','--hidden', '--column', '-g', '', '--ignore', '.git', '--ignore', '*.png', '--ignore', 'node_modules'

      call denite#custom#source('grep', 'vars', {
      \'command': ['rg'],
            \'default_opts': ['-i', '--vimgrep'],
            \'recursive_opts': [],
            \'pattern_opt': [],
            \'separator': ['--'],
            \'final_opts': [],
      \})

nnoremap <silent> <c-p> :Denite file_rec<CR>
nnoremap <silent> <leader>h :Denite help<CR>
nnoremap <silent> <leader>c :Denite colorscheme<CR>
nnoremap <silent> <leader>b :Denite buffer<CR>
nnoremap <silent> <leader>a :Denite grep:::!<CR>
nnoremap <silent> <leader>u :call dein#update()<CR>
call denite#custom#map('insert','<C-n>','<denite:move_to_next_line>','noremap')
call denite#custom#map('insert','<C-p>','<denite:move_to_previous_line>','noremap')
call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
  \ [ '.git/', '.ropeproject/', '__pycache__/',
  \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/'])
call denite#custom#var('menu', 'menus', s:menus)
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
"}}}

" Better display for messages
set cmdheight=2

" nvim-typescript
let g:nvim_typescript#max_completion_detail=100
let g:nvim_typescript#type_info_on_hold = 1
let g:nvim_typescript#default_mappings = 1
