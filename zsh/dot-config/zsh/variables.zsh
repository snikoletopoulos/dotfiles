export EDITOR='nvim'
export MANPAGER="nvim +Man!"

# Android Studio
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# ccache
export CCACHE_SLOPPINESS=clang_index_store,file_stat_matches,include_file_ctime,include_file_mtime,ivfsoverlay,pch_defines,modules,system_headers,time_macros
export CCACHE_FILECLONE=true
export CCACHE_DEPEND=true
export CCACHE_INODECACHE=true

# lazygit
export LG_CONFIG_FILE="$HOME/.config/lazygit/config.yml"

# fzf
export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#b4befe,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 \
--color=selected-bg:#45475a \
--multi \
--cycle"

# Go
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

# jenv
export PATH="$HOME/.jenv/bin:$PATH"

# TODO: pnpm
export PNPM_HOME="/Users/snikoletopoulos/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# rvm
export PATH="$PATH:$HOME/.rvm/bin"
