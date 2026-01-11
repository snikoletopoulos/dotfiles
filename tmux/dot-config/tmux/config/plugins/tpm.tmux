# Configure Tmux Plugin Manager
if 'test ! -d "${TMUX_PLUGIN_PATH}/tpm"' {
  run 'mkdir -p "${TMUX_PLUGIN_PATH}"'
  run 'git clone https://github.com/tmux-plugins/tpm "${TMUX_PLUGIN_PATH}/tpm"'
  run '${TMUX_PLUGIN_PATH}/tpm/bin/install_plugins'
}

# List of plugins
set -g @plugin "tmux-plugins/tpm"
set -g @plugin "tmux-plugins/tmux-sensible"

set -g @plugin "omerxx/tmux-sessionx"
set -g @plugin "omerxx/tmux-floax"

set -g @plugin "tmux-plugins/tmux-cpu"
set -g @plugin "xamut/tmux-weather"

set -g @plugin "wfxr/tmux-fzf-url"
set -g @plugin "nhdaly/tmux-better-mouse-mode"
set -g @plugin "christoomey/vim-tmux-navigator"

set -g @plugin "catppuccin/tmux#v2.1.3"

set -g @plugin "tmux-plugins/tmux-resurrect"
set -g @plugin "tmux-plugins/tmux-continuum"
