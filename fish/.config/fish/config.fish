set -U fish_greeting

alias g="git"
alias gl="git pull"
alias gd="git diff"
alias glr="git pull -r"
alias gst="git status"
alias gs='git status'
alias ggp="git push origin HEAD"
alias gti="git"
alias ga="git add"
alias gam="git commit --amend"
alias gaa="git add --all"
alias gcmsg="git commit --message"
alias gcm="git commit --message"
alias glog="git log"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gbv="git branch -v"
alias gu="git reset --soft HEAD^"

alias ys="yarn start"
alias yt="yarn test"
alias ytv="yarn test --verbose"

alias t="touch"
alias xx="exit"
alias lla="ls -la"
alias mk="make"

alias d="docker"
alias drm="docker rm"
alias dst="docker stop"
alias dex="docker exec -it"
alias dps="docker ps"
alias dpsa="docker ps -a"
alias dpsaq="docker ps -aq"

alias sspl="clojure -Sdeps '{:deps {nrepl {:mvn/version \"0.7.0\"} cider/cider-nrepl {:mvn/version \"0.25.2\"}}}' -m nrepl.cmdline --middleware '[\"cider.nrepl/cider-middleware\"]'"

set -x rc
set -x PATH "$HOME/.pyenv/bin" $PATH
#status --is-interactive; and pyenv init --path | source
#status --is-interactive; and pyenv virtualenv-init - | source

set -x GRADLE_HOME /opt/gradle-6.7
set -x PATH $GRADLE_HOME/bin $PATH

set -x ANDROID_HOME $HOME/Android/Sdk

set -x PATH $ANDROID_HOME/tools $PATH # obsolete

set -x PATH $ANDROID_HOME/emulator $PATH
set -x PATH $ANDROID_HOME/build-tools $PATH
set -x PATH $ANDROID_HOME/cmdline-tools $PATH
set -x PATH $ANDROID_HOME/platform-tools $PATH

set -x JAVA_HOME (dirname (dirname (readlink -f (which java))))

#if status is-interactive
#    eval (zellij setup --generate-auto-start fish | string collect)
#end

function ups
    set current_branch (git rev-parse --abbrev-ref HEAD)
    git branch --set-upstream-to=origin/$current_branch
end
