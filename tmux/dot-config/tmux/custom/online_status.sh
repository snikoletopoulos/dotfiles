show_online_status() { # This function name must match the module name!
	local index icon color text module

	index=$1 # This variable is used internally by the module loader in order to know the position of this module

	icon="$(get_tmux_option "@catppuccin_<module_name>_icon" "")"
	color="$(get_tmux_option "@catppuccin_<module_name>_color" "$thm_orange")"
	text="$(get_tmux_option "@catppuccin_<module_name>_text" "#{online_status}")"

	module=$(build_status_module "$index" "$icon" "$color" "$text")

	echo "$module"
}
