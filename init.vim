" Function to source all .vim files in directory {
function! SourceDirectory(file)
  for s:fpath in split(globpath(a:file, '*.vim'), '\n')
    exe 'source' s:fpath
  endfor
endfunction

function! SourceIfExists(file)
  if filereadable(expand(a:file))
    exe 'source' a:file
  endif
endfunction


runtime! partials/plugins.vim
runtime! partials/settings.vim
runtime! partials/colorscheme.vim
runtime! partials/statusline.vim
runtime! partials/mappings.vim
runtime! partials/abbreviations.vim
runtime! partials/ale.vim
runtime! partials/functions.vim
runtime! partials/fzf.vim

" Don't reset twice on reloading - 'compatible' has SO many side effects.
if !exists('s:loaded_my_vimrc')
  " todo: deconflate below
    call SourceIfExists("~/.config/nvim/partial/.vim")
    call SourceIfExists("~/.config/nvim/partial/.vim")
    call SourceIfExists("~/.config/nvim/partial/.vim")
    call SourceIfExists("~/.config/nvim/partial/.vim")
    call SourceIfExists("~/.config/nvim/partial/.vim")
    call SourceIfExists('~/.config/nvim/partial/settings/.vim')
    call SourceIfExists('~/.config/nvim/partial/settings/plugins.vim')
    call SourceIfExists('~/.config/nvim/partial/settings/colorscheme.vim')
    call SourceIfExists('~/.config/nvim/partial/settings/fzf.vim')
    call SourceIfExists('~/.config/nvim/partial/settings/.vim')
    call SourceIfExists('~/.config/nvim/partial/.vim')
endif

if !exists('s:loaded_my_vimrc')
  let s:loaded_my_vimrc = 1
endif<Paste>
