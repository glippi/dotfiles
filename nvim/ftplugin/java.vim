let b:dispatch = 'javac %'
nnoremap <F10> :Dispatch gradle build<CR>
setlocal omnifunc=javacomplete#Complete
