# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
    asdf 
    git 
    gh 
    docker 
    docker-compose 
    vi-mode 
    web-search 
    zsh-autosuggestions 
    zsh-completions 
    zsh-history-substring-search
    zsh-syntax-highlighting 
)

source $ZSH/oh-my-zsh.sh

# User configuration

LFCD="$HOME/.config/lf/lfcd.sh"
if [ -f "$LFCD" ]; then
    source "$LFCD"
fi

# Zsh history substring search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
