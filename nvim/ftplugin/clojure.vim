nnoremap <F10> :Dispatch lein test<CR>

iabbrev defn> (defn )<esc>F)i
iabbrev def> (def )<esc>F)i
let g:clojure_align_multiline_strings = 1
let g:fireplace_cljs_repl_opts = {'ns': 'figwheel.main.api', 'fn': 'repl-env "dev"'}
