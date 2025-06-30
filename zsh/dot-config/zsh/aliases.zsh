alias ..="cd .."
alias ...="cd ../.."
alias dev="cd ~/Developer"

alias nv="nvim"
alias lg="lazygit"

# eza
alias ls="eza --group-directories-first --icons --oneline"
alias lsl="eza --group-directories-first --icons --long --no-user --git"
alias lst="eza --group-directories-first --icons --tree"

# pnpm
alias pn="pnpm"

# tmuxinator
alias mux="tmuxinator"
alias muxstart="mux list -n | tail -n +2 | fzf | xargs tmuxinator start"
