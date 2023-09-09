export PATH=$HOME/go/bin:$HOME/.cargo/bin:$HOME/.local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

#ZSH_THEME="spaceship"

# https://github.com/spaceship-prompt/spaceship-prompt/issues/1356
#SPACESHIP_PROMPT_ASYNC="false" 

zstyle ':omz:update' mode auto

plugins=(
	fd
	fzf
	git
	sudo
	rust
	golang
	dirhistory
	web-search
	zsh-vi-mode
	zsh-autosuggestions
	zsh-syntax-highlighting
)

# https://github.com/zsh-users/zsh-completions/issues/603
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

source $ZSH/oh-my-zsh.sh

alias ranger=". ranger"

eval "$(starship init zsh)"
eval "$(fnm env --use-on-cd)"
