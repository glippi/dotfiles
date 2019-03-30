highlight ALEWarning ctermbg=DarkMagenta
highlight ALEError ctermbg=Red
highlight ALEErrorSign ctermfg=9
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '*'
" Custom error format
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" Don't lint on text change, only on save
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_save = 1
let g:ale_lint_on_enter = 1
" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
