#! /bin/bash

log() {
	printf "\n\e[1;34m====> %s <====\e[0m\n\n" "$1"
}

# Update Homebrew
log "Updating Homebrew"
brew update
brew upgrade
brew autoremove

# Update tmux plugins
log "Updating tmux plugins"
./tmux/dot-config/tmux/plugins/tpm/bin/update_plugins all

# Update zinit plugins
log "Updating zinit plugins"
zi update

# Update Yazi plugins
log "Updating Yazi plugins"
ya pack -u

# Update npm packages
log "Updating npm packages"
npm update -g
