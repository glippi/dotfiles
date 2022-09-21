#!/usr/bin/env bash

set -xe

stow --target=$HOME stowed
chsh -s `which fish`
~/.config/nvim/sync.sh
