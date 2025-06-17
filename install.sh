#! /bin/bash

log() {
	printf "\n\e[1;34m====> %s <====\e[0m\n\n" "$1"
}

# Install Homebrew
if ! [ -x "$(command -v brew)" ]; then
	log "Installing Homebrew"
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
	log "Homebrew is already installed"
fi
brew update

# Install Homebrew packages
log "Installing Homebrew packages"
brew bundle

# Setup dotfiles
log "Setting up dotfiles"
stow */

log "Install tmux plugins"
~/.config/tmux/plugins/tpm/bin/install_plugins

# Setup yazi
log "Setting up yazi"
ya pkg install
if [ ! -d "$HOME/.config/yazi/plugins/yatline-catppuccin.yazi" ]; then
	git clone https://github.com/imsi32/yatline-catppuccin.yazi.git "$HOME/.config/yazi/plugins/yatline-catppuccin.yazi"
fi
