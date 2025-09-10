# Custom aliases
alias ll="eza -l --icons --color=always"
alias ls="eza -la --icons --color=always"

alias vi="nvim"
alias vim="nvim"

alias :q="exit"

alias glog="git log --graph --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%an%C(reset)%C(bold yellow)%d%C(reset) %C(dim white)- %s%C(reset)' --all"

# Starship
set -gx STARSHIP_CONFIG "$HOME/.config/starship/starship.toml"
starship init fish | source
