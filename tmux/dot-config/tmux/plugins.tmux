# Bootstrap Tmux Plugin Manager
if 'test ! -d "${TMUX_PLUGIN_PATH}/tpm"' {
  run 'mkdir -p "${TMUX_PLUGIN_PATH}"'
  run 'git clone https://github.com/tmux-plugins/tpm "${TMUX_PLUGIN_PATH}/tpm"'
  run '${TMUX_PLUGIN_PATH}/tpm/bin/install_plugins'
}

# List of plugins
set -g @plugin "tmux-plugins/tpm"
set -g @plugin "tmux-plugins/tmux-sensible"

# Resurrect
set -g @plugin "tmux-plugins/tmux-resurrect"
set -g @resurrect-strategy-nvim "session"
set -g @resurrect-capture-pane-contents "on"
set -g @resurrect-save "S"

# Continuum
set -g @plugin "tmux-plugins/tmux-continuum"
set -g @continuum-restore "on"
set -g @continuum-save-interval "60"

# SessionX
set -g @plugin "omerxx/tmux-sessionx"
set -g @sessionx-bind "w"
set -g @sessionx-zoxide-mode "on"
set -g @sessionx-filter-current "false"
set -g @sessionx-preview-location "top"
set -g @sessionx-preview-ratio "75%"
set -g @sessionx-tmuxinator-mode "on"
set -g @sessionx-bind-tmuxinator-list "ctrl-p"
set -g @sessionx-filtered-sessions "floax"
set -g @sessionx-legacy-fzf-support "off"

# FloaX
set -g @plugin "omerxx/tmux-floax"
set -g @floax-session-name "floax"
set -g @floax-bind "s"
set -gF @floax-border-color "#{@thm_mauve}"
set -g @floax-bind-menu "M-X"

# CPU
set -g @plugin "tmux-plugins/tmux-cpu"
set -g @cpu_percentage_format "%3d%%"
set -g @cpu_medium_thresh "65"
set -g @cpu_high_thresh "85"
set -g @cpu_medium_bg_color "#[bg=default]"
set -g @cpu_high_fg_color "#[fg=#{@thm_crust}]"
set -g @cpu_high_bg_color "#[bg=red]"
set -g @cpu_low_icon "off"
set -g @cpu_medium_icon ""
set -g @cpu_high_icon ""

# Battery
set -g @plugin "tmux-plugins/tmux-battery"
set -g @batt_icon_charge_tier8 '󰂂'
set -g @batt_icon_charge_tier7 '󰂁'
set -g @batt_icon_charge_tier6 '󰂀'
set -g @batt_icon_charge_tier5 '󰁿'
set -g @batt_icon_charge_tier4 '󰁾'
set -g @batt_icon_charge_tier3 '󰁼'
set -g @batt_icon_charge_tier2 '󰁻'
set -g @batt_icon_charge_tier1 '󰁺'
set -g @batt_icon_status_charged '󰁹'
set -g @batt_icon_status_charging '󰂄'
set -g @batt_icon_status_discharging '󰂃'
set -g @batt_icon_status_attached '󰂄'
set -g @batt_icon_status_unknown '󰂄'

set -g @batt_color_charge_primary_tier8 "#{E:#{@thm_green}}"
set -g @batt_color_charge_primary_tier7 "#{E:#{@thm_green}}"
set -g @batt_color_charge_primary_tier6 "#{E:#{@thm_green}}"
set -g @batt_color_charge_primary_tier5 "#{E:#{@thm_green}}"
set -g @batt_color_charge_primary_tier4 "#{E:#{@thm_green}}"
set -g @batt_color_charge_primary_tier3 "#{E:#{@thm_pink}}"
set -g @batt_color_charge_primary_tier2 "#{E:#{@thm_yellow}}"
set -g @batt_color_charge_primary_tier1 "#{E:#{@thm_red}}"

set -g @batt_color_status_primary_charged "#{E:#{@thm_green}}"
set -g @batt_color_status_primary_charging "#{E:#{@thm_green}}"
set -g @batt_color_status_primary_discharging "#{E:#{@thm_red}}"
set -g @batt_color_status_primary_attached "#{E:#{@thm_green}}"
set -g @batt_color_status_primary_unknown  "#{E:#{@thm_green}}"
set -g @batt_remain_short "true"

# Weather
set -g @plugin "xamut/tmux-weather"
set -g @tmux-weather-format "%c++%t+(%f)"

# Online status
set -g @plugin "tmux-plugins/tmux-online-status"
set -g @online_icon "󰖩"
set -g @offline_icon "󰤮"

set -g @plugin "wfxr/tmux-fzf-url"
set -g @plugin "nhdaly/tmux-better-mouse-mode"
set -g @plugin "christoomey/vim-tmux-navigator"
