# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export EDITOR="nvim"

export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/go/bin:$PATH"

export ZSH_CUSTOM="$HOME/.zsh"

plugins=(git sudo docker zsh-autosuggestions zsh-syntax-highlighting pyenv colorize pip npm kubectl)

source $ZSH/oh-my-zsh.sh

# User configuration
ZSH_HIGHLIGHT_STYLES[alias]=fg=#FFD700,bold
ZSH_HIGHLIGHT_STYLES[builtin]=fg=#FFD700,bold
ZSH_HIGHLIGHT_STYLES[function]=fg=#FFD700,bold
ZSH_HIGHLIGHT_STYLES[command]=fg=#FFD700,bold
ZSH_HIGHLIGHT_STYLES[precommand]=fg=#daa520,bold

source ~/powerlevel10k/powerlevel10k.zsh-theme

# You may need to manually set your language environment
# export LANG=en_US.UTF-8


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

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
