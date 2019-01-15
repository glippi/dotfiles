let cwd = getcwd()
let g:dotfilesPath  = expand('%:h')
exe 'source' g:dotfilesPath . '/nvim-partials/settings.vim'
exe 'source' g:dotfilesPath . '/nvim-partials/plugins.vim'
exe 'source' g:dotfilesPath . '/nvim-partials/mappings.vim'
exe 'source' g:dotfilesPath . '/nvim-partials/abbreviations.vim'
exe 'source' g:dotfilesPath . '/nvim-partials/statusline.vim'
exe 'source' g:dotfilesPath . '/nvim-partials/ale.vim'
exe 'source' g:dotfilesPath . '/nvim-partials/fzf.vim'
exe 'source' g:dotfilesPath . '/nvim-partials/colorscheme.vim'
exe 'source' g:dotfilesPath . '/nvim-partials/functions.vim'
