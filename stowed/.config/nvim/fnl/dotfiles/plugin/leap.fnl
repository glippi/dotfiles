(module dotfiles.plugin.leap)

(let [(ok? leap) (pcall require :leap)]
  (when ok?
    (leap.setup)))
;; require('leap').add_default_mappings().
