#! /bin/zsh -i

log() {
	printf "\n\e[1;34m====> %s <====\e[0m\n\n" "$1"
}

# Update Homebrew
log "Updating Homebrew"
brew update
brew upgrade
brew autoremove

log "Updating zinit"
clear_evalcache # Clear eval cache
zinit self-update

log "Updating zinit plugins"
zinit update

log "Updating tmux plugins"
~/.config/tmux/plugins/tpm/bin/update_plugins all

# Update Yazi plugins
log "Updating Yazi plugins"
ya pkg upgrade

# Update npm packages
log "Updating npm packages"
npm update -g
