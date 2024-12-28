alias ls="eza --group-directories-first --icons --oneline"
alias lsl="eza --group-directories-first --icons --long --git"
alias lst="eza --group-directories-first --icons --tree"
alias nv="nvim"

alias ..="cd .."
alias ...="cd ../.."
alias dev="cd ~/Developer"

alias mux="tmuxinator"
alias muxstart="mux list -n | tail -n +2 | fzf | xargs tmuxinator start"
