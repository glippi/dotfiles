nnoremap <C-]> :PhpactorGotoDefinition<CR>
nnoremap <Leader><Leader>h :PhpactorGotoDefinitionHsplit<CR>
nnoremap <Leader><Leader>v :PhpactorGotoDefinitionVsplit<CR>
nnoremap <Leader><Leader>t :PhpactorGotoDefinitionTab<CR>
nnoremap <Leader>u :PhpactorImportClass<CR>
nnoremap <Leader>e :PhpactorClassExpand<CR>
nnoremap <Leader>ua :PhpactorImportMissingClasses<CR>
nnoremap <Leader>mm :PhpactorContextMenu<CR>
nnoremap <Leader>im :PhpactorGotoImplementations<CR>
nnoremap <Leader>K :PhpactorHover<CR>
nnoremap <Leader>tt :PhpactorTransform<CR>
nnoremap <Leader>cc :PhpactorClassNew<CR>
nnoremap <Leader>ci :PhpactorClassInflect<CR>
nnoremap <Leader>fr :PhpactorFindReferences<CR>
nnoremap <Leader>mf :PhpactorMoveFile<CR>
nnoremap <Leader>cf :PhpactorCopyFile<CR>

" refactorings:
" extract constant
nnoremap <M-C-c> :PhpactorExtractConstant<CR>
" extract expression
nnoremap <M-C-v> :PhpactorExtractExpression<CR>
vnoremap <M-C-v> :<C-u>PhpactorExtractExpression<CR>
" extract method
vnoremap <M-C-m> :<C-u>PhpactorExtractMethod<CR>

setlocal omnifunc=phpactor#Complete
