# My aliases
alias ll="exa -ll --color=always"
alias ls="exa -al --color=always --group-directories-first"

alias vi="nvim"
alias vim="nvim"

alias :q="exit"

# Git aliases
alias gfa="git fetch -a"
alias gpl="git pull"
alias gac="git commit -am"
alias gps="git push"

# React Native require this sh*t
status --is-interactive; and rbenv init - fish | source

set --export ANDROID $HOME/Library/Android
set --export ANDROID_HOME $ANDROID/sdk
set --export ANDROID_SDK_ROOT $ANDROID/sdk

