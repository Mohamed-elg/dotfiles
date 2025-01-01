# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export EDITOR="nvim"
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
eval "$(starship init zsh)"

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# User configuration
ZSH_HIGHLIGHT_STYLES[alias]=fg=#FFD700,bold
ZSH_HIGHLIGHT_STYLES[builtin]=fg=#FFD700,bold
ZSH_HIGHLIGHT_STYLES[function]=fg=#FFD700,bold
ZSH_HIGHLIGHT_STYLES[command]=fg=#FFD700,bold
ZSH_HIGHLIGHT_STYLES[precommand]=fg=#daa520,bold

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

alias lsa="ls -a"
alias ll="ls -la"
alias gps="git push"
alias gpl="git pull"
alias gsw="git switch"
alias ga="git add"
alias gc="git commit"
alias py="python3"
alias k="kubectl"
alias h="helm"
alias tohypr="nvim ~/.config/hypr/hyprland.conf"
alias pac="pikaur"
alias tocode="cd ~/Bureau/Code"
alias n="nvim"
alias vim="nvim"
alias vi="nvim"
alias f='nvim $(fzf -m --preview="bat --color=always {}")'
alias d='cd $(fd --type directory | fzf)'
alias ..="cd .."
alias ...="cd ../.."
alias dot="cd ~/Bureau/Code/dotfiles"
alias ls="eza --icons=always"
alias cat="bat --plain"
alias venv="source .venv/bin/activate"
