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
