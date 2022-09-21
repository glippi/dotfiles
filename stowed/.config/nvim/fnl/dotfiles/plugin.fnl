(module dotfiles.plugin
  {autoload {nvim aniseed.nvim
             a aniseed.core
             util dotfiles.util
             : packer}})

(defn safe-require-plugin-config [name]
  (let [(ok? val-or-err) (pcall require (.. :dotfiles.plugin. name))]
    (when (not ok?)
      (print (.. "dotfiles error: " val-or-err)))))

(defn- use [...]
  "Iterates through the arguments as pairs and calls packer's use function for
  each of them. Works around Fennel not liking mixed associative and sequential
  tables as well."
  (let [pkgs [...]]
    (packer.startup
      (fn [use]
        (for [i 1 (a.count pkgs) 2]
          (let [name (. pkgs i)
                opts (. pkgs (+ i 1))]
            (-?> (. opts :mod) (safe-require-plugin-config))
            (use (a.assoc opts 1 name)))))))
  nil)

;; Plugins to be managed by packer.
(use
  :Olical/aniseed {:branch :develop}
  :Olical/conjure {:branch :master :mod :conjure}
  :Olical/nvim-local-fennel {}
  :lewis6991/impatient.nvim {}
  :HerringtonDarkholme/yats.vim {}
  :PaterJason/cmp-conjure {}
  :airblade/vim-gitgutter {}
  :clojure-vim/clojure.vim {}
  :folke/which-key.nvim {:mod :which-key}
  :guns/vim-sexp {:mod :sexp}
  :habamax/vim-asciidoctor {}
  :hashivim/vim-terraform {}
  :hrsh7th/cmp-buffer {}
  :hrsh7th/cmp-cmdline {}
  :hrsh7th/cmp-nvim-lsp {}
  :hrsh7th/cmp-path {}
  :hrsh7th/nvim-cmp {:mod :cmp}
  :liuchengxu/vim-better-default {:mod :better-default}
  :marko-cerovac/material.nvim {:mod :material}
  :maxmellon/vim-jsx-pretty {}
  :neovim/nvim-lspconfig {:mod :lspconfig}
  :norcalli/nvim-colorizer.lua {:mod :colorizer}
  :nvim-lualine/lualine.nvim {:mod :lualine}
  :nvim-telescope/telescope.nvim {:mod :telescope :requires [[:nvim-lua/popup.nvim] [:nvim-lua/plenary.nvim]]}
  :nvim-treesitter/nvim-treesitter {:mod :treesitter}
  :pangloss/vim-javascript {}
  :tpope/vim-fugitive {:mod :fugitive}
  :tpope/vim-repeat {}
  :tpope/vim-sexp-mappings-for-regular-people {}
  :tpope/vim-surround {}
  :tweekmonster/startuptime.vim {}
  :wbthomason/packer.nvim {}
  :windwp/nvim-autopairs {:mod :autopairs}
  :nvim-treesitter/nvim-treesitter {:run ":TSUpdate" :mod :treesitter}
  :glippi/lognroll-vim {}
  :glippi/markabbreviations-vim {}
  :glippi/baddscratch {}
  )
