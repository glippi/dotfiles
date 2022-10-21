#!/usr/bin/env bash

set -xe

stow --target=$HOME stowed
cd && sudo bash < <(curl -s https://raw.githubusercontent.com/clojure-lsp/clojure-lsp/master/install)
chsh -s `which fish`
~/.config/nvim/sync.sh
