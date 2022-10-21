(module dotfiles.mapping
  {autoload {nvim aniseed.nvim
             util dotfiles.util}})

;; Generic mapping configuration.
(nvim.set_keymap :n :<space> :<nop> {:noremap true})
(set nvim.g.mapleader " ")
(set nvim.g.maplocalleader ",")

;; jk escape sequences.
(util.noremap :i :jk :<esc>)
(util.noremap :c :jk :<c-c>)
(util.noremap :t :jk :<c-\><c-n>)

;; Trim trialing whitespace.
(util.noremap :n :<leader>bt ":%s/\\s\\+$//e<cr>")

;; iabbrev
;; df\<space> (defn)
(nvim.set_keymap :i "df\\<space>" "defn<esc>Fdi(<esc>fna)<esc>i<space>" {})

;; cnoreabbrev
(util.noremap :c :Wa :wa)
(util.noremap :c :wA :wa)
(util.noremap :c :WA :wa)
(util.noremap :c :Wq :wq)
(util.noremap :c :wQ :wq)
(util.noremap :c :WQ :wq)
(util.noremap :c :Wqa :wqa)
(util.noremap :c :WQa :wqa)
(util.noremap :c :WQA :wqa)
(util.noremap :c :W! :w!)
(util.noremap :c :W :w)
(util.noremap :c :Q :q)
(util.noremap :c :Q! :q!)
(util.noremap :c :Qa :qa)
(util.noremap :c :qA :qa)
(util.noremap :c :Bd :bd)
(util.noremap :c :bD :bd)
(util.noremap :c :BD :bd)
(util.noremap :c :E :e)
(util.noremap :c :f :find)
