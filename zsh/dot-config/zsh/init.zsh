export EDITOR='nvim'
export MANPAGER="nvim +Man!"

setopt nomatch

zle_highlight=('paste:none')

bindkey -v
# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase

setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
