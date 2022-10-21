(module dotfiles.plugin.cmp
  {autoload {nvim aniseed.nvim}})

(set nvim.o.completeopt "menu,noselect")

(let [(ok? cmp) (pcall require :cmp)]
  (when ok?
    (cmp.setup
      {:sources [{:name "buffer"}
                 {:name "conjure"}
                 {:name "nvim_lsp"}
                 {:name "path"}
                 {:name "cmdline"}]
       :mapping (cmp.mapping.preset.insert
                  {"<C-b>" (cmp.mapping.scroll_docs -4)
                   "<C-f>" (cmp.mapping.scroll_docs 4)
                   "<C-Space>" (cmp.mapping.complete)
                   "<C-e>" (cmp.mapping.abort)
                   "<CR>" (cmp.mapping.confirm {:select true})})})))
