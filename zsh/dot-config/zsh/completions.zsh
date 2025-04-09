# fzf-tab
zstyle ":completion:*" list-colors '${(s.:.)LS_COLORS}'
zstyle ":completion:*" menu no
zstyle ':completion:*:descriptions' format '[%d]'
zstyle ":fzf-tab:complete:cd:*" fzf-preview 'eza --group-directories-first --color=always --long --no-user --no-time --icons --git $realpath'
zstyle ":fzf-tab:complete:nvim:*" fzf-preview '[ -f $realpath ] && bat --color=always --style=numbers $realpath || eza --group-directories-first --color=always --long --no-user --no-time --icons --git $realpath'
zstyle ':fzf-tab:complete:z:*' fzf-preview 'eza --group-directories-first --color=always --long --no-user --no-time --icons --git $realpath'

# fzf-tab: kill
zstyle ':completion:*:*:*:*:processes' command "ps -u $USER -o pid,user,comm -w -w"
zstyle ':fzf-tab:complete:(kill|ps):argument-rest' fzf-preview '[[ $group == "[process ID]" ]] && ps --pid=$word -o cmd --no-headers -w -w'
zstyle ':fzf-tab:complete:(kill|ps):argument-rest' fzf-flags --preview-window=down:3:wrap

# fzr-tab: systemd
zstyle ':fzf-tab:complete:systemctl-*:*' fzf-preview 'SYSTEMD_COLORS=1 systemctl status $word'

# fzf-tab: homebrew
zstyle ':fzf-tab:complete:brew-(install|uninstall|search|info):*-argument-rest' fzf-preview 'brew info $word'

# Docker
zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes
