" configs from vim-bootstrap
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__,node_modules,.idea,.gradle,gradle

" set default command for FZF
let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"

let g:fzf_layout = { 'window': '40split enew' }
" search files
nnoremap <c-p> :Files<CR>
" search buffers
nnoremap <leader>b :Buffers<CR>
" search commits
nnoremap <c-g> :Commits<CR>
" search commits in current buffer
nnoremap <c-bc> :BCommits<CR>
" close with esc
autocmd! FileType fzf tnoremap <buffer> <esc> <c-c>

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)
