#!/usr/bin/env bash

set -xe

sudo dnf install -y \
  kitty fzf cowsay entr fish httpie htop npm nodejs \
  asciinema ripgrep clojure clojure-lsp lazygit tree \
  lua-language-server lua xclip \
  ttf-fira-code ttf-dejavu-emojiless noto-fonts-emoji \
  gnome-keyring topgrade neovim leiningen difftastic

npm install -g typescript-language-server
