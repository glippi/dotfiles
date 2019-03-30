" Down is really the next line
nnoremap j gj
nnoremap k gk

" Press j or k to turn off highlighting of last search
nnoremap <silent> j :nohlsearch<CR>j
nnoremap <silent> k :nohlsearch<CR>k

" Map for Escape key
inoremap jk <Esc>
tnoremap <Esc> <C-\><C-n>

" Yank to the end of the line
nnoremap Y y$

" Paste from system clipboard with Ctrl + v
inoremap <C-v> <Esc>"+p
nnoremap <Leader>p "0p
vnoremap <Leader>p "0p
nnoremap <Leader>h viw"0p

" Move to the end of yanked text after yank and paste
nnoremap p p`]
vnoremap y y`]
vnoremap p p`]

" Disable ex mode mapping
map Q <Nop>

"open a split with terminal
noremap <Leader>ss :vsplit <CR>:term<CR>i

" create a new tab and open a terminal window in insert mode
nnoremap <leader>tt :tabnew<esc>:terminal<CR>i

" create a new tab and open a terminal and start yarn
nnoremap <leader>ys :tabnew<esc>:terminal<CR>iyarn start<CR>

" open new tab with the last commit to explore
nnoremap <silent> <leader>ge :Gtabedit HEAD^{}<CR>

"" Git
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gc :Gcommit<CR>
noremap <Leader>gp :Git ps<CR>
noremap <Leader>gl :Git pl<CR>
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gvdiff<CR>
noremap <Leader>gr :Gremove<CR>
" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap <leader>v :vs<CR>
nnoremap <leader>h :sp<CR>
" create new file in the current directory
nnoremap <leader>nf :e %:h/
" If statement check
let g:lognroll_vim#enable_insert_mode = 1
let g:tachyons_vim_css = 0

"set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
map <F9> :Make!<CR>

nnoremap <Leader>x :<C-U>call StripTrailingWhitespace()<CR>

"/home/gabriele/java-language-server/java-language-server/dist/mac/bin/launcher --quiet" 
let g:lsc_server_commands = {'java': '/home/gabriele/java-language-server/dist/mac/bin/launcher --quiet'}
let g:lsc_auto_map = v:true
let g:lsc_trace_level = "verbose"
