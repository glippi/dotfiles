function! s:packager_init() abort
  packadd vim-packager
  call packager#init()
  call packager#add('kristijanhusak/vim-packager', { 'type': 'opt' })
  call packager#add('GabrieleLippi/ydkjs-vim')
  call packager#add('GabrieleLippi/emmex-vim')
  call packager#add('machakann/vim-highlightedyank')
  call packager#add('junegunn/fzf', { 'do': './install --all && ln -sf $(pwd) ~/.fzf'})
  call packager#add('junegunn/fzf.vim')
  call packager#add('w0rp/ale')
  call packager#add('tpope/vim-surround')
  call packager#add('tpope/vim-fugitive')
  call packager#add('vim-airline/vim-airline')
  call packager#add('vim-airline/vim-airline-themes')
  call packager#add('morhetz/gruvbox')
  call packager#add('HerringtonDarkholme/yats.vim')
  call packager#add('othree/yajs.vim')
  call packager#add('Raimondi/delimitMate')
  call packager#add('chemzqm/vim-jsx-improve')
  call packager#add('rking/ag.vim')
  call packager#add('tpope/vim-eunuch')
endfunctio

command! -nargs=0 PackagerInstall call s:packager_init() | call packager#install()
command! -bang PackagerUpdate call s:packager_init() | call packager#update({ 'force_hooks': '<bang>' })
command! PackagerClean call s:packager_init() | call packager#clean()
command! PackagerStatus call s:packager_init() | call packager#status()


" Highlight jsx syntax even in non .jsx files
let g:jsx_ext_required = 0

let g:ackprg = 'ag --nogroup --nocolor --column'
