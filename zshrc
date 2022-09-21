autoload colors zsh/terminfo
colors
setopt auto_cd
setopt correctall

export JAVA_HOME=/usr/lib/jvm/jdk-11.0.2
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=${PATH}:${JAVA_HOME}/bin
#go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/go/bin
export UPDATE_ZSH_DAYS=30
export SSH_KEY_PATH="~/.ssh/rsa_id"

COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="dd/mm/yyyy"

alias g="git"
alias gl="git pull"
alias gd="git diff"
alias glr="git pull -r"
alias gst="git status"
alias ggp="git push origin HEAD"
alias gti="git"
alias ga="git add"
alias gam="git commit --amend"
alias gaa="git add --all"
alias gcmsg="git commit --message"
alias glog="git log"
alias ys="yarn start"
alias yt="yarn test"
alias ytv="yarn test --verbose"
alias t="touch"
alias xx="exit"
alias d="docker"
alias drm="docker rm"
alias dst="docker stop"
alias dex="docker exec -it"
alias dps="docker ps"
alias dpsa="docker ps -a"
alias dpsaq="docker ps -aq"
alias lla="ls -la"
alias mk="make"
alias nim="cd && cd Applications && ./nvim.appimage"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
if [ "$TMUX" = "" ]; then tmux; fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/gabriele/.sdkman"
[[ -s "/home/gabriele/.sdkman/bin/sdkman-init.sh" ]] && source "/home/gabriele/.sdkman/bin/sdkman-init.sh"

if [ -d "$HOME/adb-fastboot/platform-tools" ] ; then
 export PATH="$HOME/adb-fastboot/platform-tools:$PATH"
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
