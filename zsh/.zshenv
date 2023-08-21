# editor
if [ -x "$(command -v nvim)" ]; then
	export EDITOR="nvim";
	export VISUAL=$EDITOR;

	alias vi=$EDITOR;
	alias vim=$EDITOR;
fi

# rustup
. "$HOME/.cargo/env"
