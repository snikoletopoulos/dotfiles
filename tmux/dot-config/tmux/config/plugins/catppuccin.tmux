set -g @catppuccin_window_status_style "custom"
set -g @catppuccin_status_background "none"
set -g @catppuccin_status_connect_separator "no"

# Pane
set -g @catppuccin_pane_border_style "fg=#{@thm_overlay_1}"
set -g @catppuccin_pane_active_border_style "##{?pane_in_mode,fg=#{@thm_sky},##{?pane_synchronized,fg=#{@thm_peach},fg=#{@thm_mauve}}}"

# =
set -g @catppuccin_pane_background_color "#{@thm_blue}" # ?
set -g @catppuccin_pane_color "#{@thm_green}" # ?

set -g @catppuccin_pane_status_enabled "yes" # set to "yes" to enable
set -g @catppuccin_pane_border_status "yes" # set to "yes" to enable
# =

# Window
%hidden BG_COLOR="#{@thm_surface_1}"
%hidden ACCTIVE_COLOR="#{@thm_mauve}"

%hidden BG_COLOR="#{@thm_surface_1}"
%hidden BG_ICON_COLOR="#{@thm_blue}"

set -g @catppuccin_window_number_color ""
# set -g @catppuccin_window_text "#[bg=${BG_COLOR}]#W#{?window_zoomed_flag,(),}"
set -g @catppuccin_window_left_separator "#[fg=${BG_COLOR},bg=default]"
set -g @catppuccin_window_text "#[bg=${BG_COLOR}]#{?#{!=:#{window_name},},#W,} "
set -g @catppuccin_window_middle_separator ""
set -g @catppuccin_window_number "#I"
set -g @catppuccin_window_right_separator "#[fg=${BG_COLOR},bg=default]" 
set -g @catppuccin_window_number_position "right"

# Current Window
# %hidden BG_COLOR="#{?window_bell_flag,#{@thm_red},#{@thm_surface_2}}"
%hidden BG_COLOR="#{@thm_surface_2}"
%hidden BG_ICON_COLOR="#{@thm_peach}"

set -g @catppuccin_window_current_number_color ""
set -g @catppuccin_window_current_number "#[fg=${BG_COLOR}]#[fg=${ACCTIVE_COLOR},bg=${BG_COLOR}]#I"
# set -g @catppuccin_window_current_text "#[bg=${BG_COLOR}]#W#{?window_zoomed_flag,(),}"
set -g @catppuccin_window_current_left_separator "#[fg=${ACCTIVE_COLOR},bg=default]"
set -g @catppuccin_window_current_text "#[fg=#{@thm_mantle},bg=${ACCTIVE_COLOR}]#{?#{!=:#{window_name},},#W,}"
set -g @catppuccin_window_current_middle_separator ""
set -g @catppuccin_window_current_right_separator "#[fg=${BG_COLOR},bg=default]" 

# Status
set -g @catppuccin_status_left_separator ""
set -g @catppuccin_status_right_separator ""
set -g @catppuccin_status_module_bg_color "#{@thm_surface_1}"

set -g @catppuccin_directory_text " #{s|${HOME}|~|:pane_current_path}"
set -g @catppuccin_date_time_text " %I:%M %p"

# %hidden MODULE_NAME="continuum_a"
#
# set -g "@catppuccin_${MODULE_NAME}_icon" " "
# set -gF "@catppuccin_${MODULE_NAME}_color" "#{E:@thm_peach}"
# set -gF "@catppuccin_${MODULE_NAME}_text" "#{continuum_status}contin"
#
# source-file -F "#{TMUX_PLUGIN_PATH}/tmux/utils/status_module.conf"

# %hidden MODULE_NAME="online_status"
#
# set -g "@catppuccin_${MODULE_NAME}_icon" " "
# set -gF "@catppuccin_${MODULE_NAME}_color" "#{E:@thm_green}"
# set -gF "@catppuccin_${MODULE_NAME}_text" "#(date) %% #{c:#{@thm_blue}} online ha"
#
# source-file -F "#{TMUX_PLUGIN_PATH}/tmux/utils/status_module.conf"

run "#{TMUX_PLUGIN_PATH}/tmux/catppuccin.tmux"
