" down is really the next line
nnoremap j gj
nnoremap k gk
" remap <Esc> to jk
inoremap jk <Esc>
" use <Esc> in terminal mode
tnoremap <Esc> <C-\><C-n>
" yank till EOL
nnoremap Y y$
" move to the end of yanked text after yank and paste
nnoremap p p`]
vnoremap y y`]
vnoremap p p`]
" disable ex mode mapping
map Q <Nop>
" open a split with terminal
noremap <Leader>sh :vsplit <CR>:term<CR>i
" new tab with terminal in insert mode
nnoremap <leader>tt :tabnew<esc>:terminal<CR>i
" new tab with terminal and yarn started
nnoremap <leader>ys :tabnew<esc>:terminal<CR>iyarn start<CR>
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv
" split vertical
nnoremap <leader>v :vs<CR>
" split horizontal
nnoremap <leader>h :sp<CR>
" create new file in the current directory
nnoremap <leader>nf :e %:h/
" open file explorer
nnoremap <F1> :Ex<CR>
" reload file
nnoremap <leader>r :e!<CR>
" stripe whitespace
nnoremap <Leader>x :<C-U>call StripTrailingWhitespace()<CR>
" remove highilight
nnoremap <Leader>nl :nohlsearch
