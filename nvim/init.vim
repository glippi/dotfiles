call plug#begin('~/.config/nvim/plugged')
"colorscheme
Plug 'fenetikm/falcon'
Plug 'morhetz/gruvbox'

"JS/TS
Plug 'leafgarland/typescript-vim'
Plug 'chemzqm/vim-jsx-improve'
Plug 'othree/yajs.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'othree/es.next.syntax.vim'

"Elm
Plug 'carmonw/elm-vim' "elm 0.19

"utilities
Plug 'raimondi/delimitmate'
Plug 'machakann/vim-highlightedyank'

"tpope others
Plug 'tpope/vim-fugitive'

"my plugins
Plug 'glippi/lognroll-vim'
Plug 'glippi/markabbreviations-vim'
Plug 'glippi/tachyons-vim', { 'do': 'sh install.sh' }

"lsp
Plug 'neovim/nvim-lspconfig' 
"autocomplete
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
"fuzzy finding and etc - BurntSushi/ripgrep is required for live_grep and grep_string
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
call plug#end()

" Find files using Telescope command-line sugar.
nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <C-g> <cmd>Telescope live_grep<cr>

lua << EOF
local lsp = require('lspconfig')
local cmp = require('cmp')
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

lsp.tsserver.setup{
  capabilities = capabilities,
}

vim.o.completeopt = 'menuone,noselect'

cmp.setup {
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end,
    ['<S-Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end,
  },
  sources = {
    { name = 'nvim_lsp' },
  },
}
EOF
