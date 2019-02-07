autoload colors zsh/terminfo
colors
setopt auto_cd
setopt correctall
alias git status='nocorrect git status'

export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=30


COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="dd/mm/yyyy"

plugins=(
  git
  ubuntu
)

source $ZSH/oh-my-zsh.sh

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

alias gti="git"
alias vi="nvim"
alias ys="yarn start"
alias cc="clear"
alias t="touch"
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
if [ "$TMUX" = "" ]; then tmux; fi
