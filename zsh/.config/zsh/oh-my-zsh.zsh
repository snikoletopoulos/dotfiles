export ZSH="$HOME/.oh-my-zsh"

plugins=(
	docker
	git
	fzf
	gh
	ohmyzsh-full-autoupdate
	pod
	web-search
	ripgrep
	vi-mode
	yarn
	zoxide
	zsh-autosuggestions
	zsh-completions
	zsh-syntax-highlighting
)

zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes

zstyle ':omz:update' mode auto

source $ZSH/oh-my-zsh.sh

[[ -x $HOME/.oh-my-zsh ]] || sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
