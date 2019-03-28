nnoremap <F8> :Dispatch yarn start<CR>
nnoremap <F10> :Dispatch<CR>
nnoremap <F12> :Dispatch yarn watch<CR>
nmap !if yiwoif (!)<Esc>F!pA return null

function! LoadMainNodeModule(fname)
    let nodeModules = "./node_modules/"
    let packageJsonPath = nodeModules . a:fname . "/package.json"

    if filereadable(packageJsonPath)
        return nodeModules . a:fname . "/" . json_decode(join(readfile(packageJsonPath))).main
    else
        return nodeModules . a:fname
    endif
endfunction

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint', 'prettier'],
\   'typescript': ['tslint', 'prettier'],
\   'css': ['prettier'],
\}
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'typescript': ['tsserver'],
\}
" ignore tslint
let g:ale_linters_ignore = {'typescript': ['tslint']}
noremap <c-]> :ALEGoToDefinition<CR>
noremap <Leader>af :ALEFix<CR>
noremap <Leader>ar :ALEFindReferences<CR>
noremap <Leader>ah :ALEHover<CR>
" navigate between errors
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
