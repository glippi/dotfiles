let b:dispatch = 'javac %'

let g:lsc_server_commands = {'java': '/home/gabriele/java-language-server/dist/mac/bin/launcher --quiet'}
let g:lsc_auto_map = v:true
let g:lsc_trace_level = "verbose"

nnoremap <F10> :Dispatch gradle build<CR>
