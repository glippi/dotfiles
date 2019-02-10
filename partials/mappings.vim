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
" Select last pasted text
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

" Move selected lines up and down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv


nnoremap <silent><Leader>q :call <sid>close_buffer()<CR>
nnoremap <silent><Leader>Q :call <sid>close_buffer(v:true)<CR>

" Disable ex mode mapping
map Q <Nop>

function! s:close_buffer(...) abort
  if &buftype !=? ''
    return execute('q!')
  endif
  let l:windowCount = winnr('$')
  let l:totalBuffers = len(getbufinfo({ 'buflisted': 1 }))
  let l:noSplits = l:windowCount ==? 1
  let l:bang = a:0 > 0 ? '!' : ''
  if l:totalBuffers > 1 && l:noSplits
    let l:command = 'bp'
    if buflisted(bufnr('#'))
      let l:command .= '|bd'.l:bang.'#'
    endif
    return execute(l:command)
  endif
  return execute('q'.l:bang)
endfunction

"Open .vimrc in split window
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
"Refresh .vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>
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
nmap !if yiwoif (!)<Esc>F!pA return null
let g:lognroll_vim#enable_insert_mode = 1
let g:tachyons_vim_css = 0
