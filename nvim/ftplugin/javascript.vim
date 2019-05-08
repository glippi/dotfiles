nnoremap <F8> :Dispatch! yarn start<CR>
nnoremap <F10> :tabnew<CR>:terminal<CR>iyarn test<CR><esc>
nnoremap <F12> :Dispatch! yarn watch<CR>
nmap !if yiwoif (!)<Esc>F!pA return null

nnoremap <leader>cf yaw:e src/<C-r>"<left>.js<CR>iec><C-]>
nnoremap <leader>/ ^i//<space><C-c>

"let g:lsc_auto_map = {
"   \ 'GoToDefinition': '<C-]>',
"   \ 'GoToDefinitionSplit': ['<C-W>]', '<C-W><C-]>'],
"   \ 'FindReferences': 'gr',
"   \ 'FindImplementations': 'gI',
"   \ 'FindCodeActions': 'ga',
"   \ 'Rename': 'gR',
"   \ 'ShowHover': v:true,
"   \ 'DocumentSymbol': 'go',
"   \ 'WorkspaceSymbol': 'gS',
"   \ 'SignatureHelp': '<C-m>',
"   \ 'Completion': 'completefunc',
"   \}
"let g:lsc_trace_level = "verbose"
