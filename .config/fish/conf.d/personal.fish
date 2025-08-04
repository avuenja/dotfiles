# Custom aliases
alias ll="eza -l --icons --color=always"
alias ls="eza -la --icons --color=always"

alias vi="nvim"
alias vim="nvim"

alias :q="exit"

# Starship
set -gx STARSHIP_CONFIG "$HOME/.config/starship/starship.toml"
starship init fish | source
