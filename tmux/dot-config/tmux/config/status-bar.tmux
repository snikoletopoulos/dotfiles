set -g status-left-length 100
set -g status-left "#{E:@catppuccin_status_session} "

set -g status-right-length 100
set -gF status-right "#{E:@catppuccin_status_application}"
set -ag status-right " #{E:@catppuccin_status_directory}"
# set -agF status-right " #{E:@catppuccin_status_continuum_a}"
# set -ag status-right " #{E:@catppuccin_status_online_status}"
set -agF status-right " #{E:@catppuccin_status_cpu}"
set -agF status-right " #{E:@catppuccin_status_weather}"
set -ag status-right " #{E:@catppuccin_status_date_time}"
