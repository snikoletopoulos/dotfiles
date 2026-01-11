unbind C-b
set -g prefix C-s
unbind C-s
bind C-s send-prefix

bind -r -N "Move window to the left" "<" swap-window -d -t -1
bind -r -N "Move window to the right" ">" swap-window -d -t +1

bind -N "Clear history" C-c send-keys C-l

# Create new shells
bind -N "New window" c new-window -c "#{pane_current_path}"
bind -N "Vertical split" v split-window -v -c "#{pane_current_path}"
bind -N "Horizontal split" h split-window -h -c "#{pane_current_path}"

# popups
bind -N "Lazygit" g run-shell \
  'tmux popup -d "#{pane_current_path}" -S "bg=#{@thm_bg}" -E -w 90% -h 90% -T Git lazygit'
bind -N "Spotify" m run-shell \
  'tmux popup -d "#{pane_current_path}" -S "bg=#{@thm_bg}" -E -w 90% -h 90% -T Spotify spotify_player'
# bind -N "File manager" f run-shell \
#   'tmux popup -d "#{pane_current_path}" -S "bg=#{@thm_bg}" -E -w 90% -h 90% -T "File manager" yazi'
bind -N "Activity monitor" b run-shell \
  'tmux popup -d "#{pane_current_path}" -S "bg=#{@thm_bg}" -E -w 90% -h 90% -T "Activity" btop'
# bind -N "pet" b run-shell \
#   'tmux popup -d "#{pane_current_path}" -S "bg=#{@thm_bg}" -E -w 90% -h 90% -T "Activity" btop'
