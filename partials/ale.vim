"highlight ALEWarning ctermbg=DarkMagenta
"highlight ALEError ctermbg=Red
"highlight ALEErrorSign ctermfg=9
"let g:ale_sign_error = '⤫'
"let g:ale_sign_warning = '*'
"" Custom error format
"let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"let g:ale_fixers = {
"\   '*': ['remove_trailing_lines', 'trim_whitespace'],
"\   'javascript': ['eslint', 'prettier'],
"\   'typescript': ['tslint', 'prettier'],
"\   'css': ['prettier'],
"\}
"let g:ale_linters = {
"\   'javascript': ['eslint'],
"\   'typescript': ['tsserver'],
"\}
"" ignore tslint
"let g:ale_linters_ignore = {'typescript': ['tslint']}
"" Don't lint on text change, only on save
"let g:ale_lint_on_text_changed = 0
"let g:ale_lint_on_save = 1
"let g:ale_lint_on_enter = 1
"" Set this variable to 1 to fix files when you save them.
"let g:ale_fix_on_save = 1
"let g:ale_completion_enabled = 1
"let g:airline#extensions#ale#enabled = 1
"noremap <c-]> :ALEGoToDefinition<CR>
"noremap <Leader>af :ALEFix<CR>
"noremap <Leader>ar :ALEFindReferences<CR>
"noremap <Leader>ah :ALEHover<CR>
"" navigate between errors
"nmap <silent> <C-k> <Plug>(ale_previous_wrap)
"nmap <silent> <C-j> <Plug>(ale_next_wrap)
