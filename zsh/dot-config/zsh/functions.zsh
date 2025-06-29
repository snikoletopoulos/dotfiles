google() {
	open "https://www.google.com/search?q=$*"
}

cx() { cd "$@" && ls; }
zx() { z "$@" && ls; }

dotconfig() {
	cd ~/dotfiles || return
	nv
	cd - || return
}

nvimconfig() {
	cd ~/.config/nvim || return
	nv
	cd - || return
}

start_tmux() {
	session_ids="$(tmux list-sessions)"

	if [[ -z "$session_ids" ]]; then
		tmux new-session
	fi

	create_new_session="Create new session"
	start_without_tmux="Start without tmux"
	choices="$session_ids\n${create_new_session}:\n${start_without_tmux}:"
	choice="$(echo "$choices" | fzf | cut -d: -f1)"

	if [[ "$choice" = "${create_new_session}" ]]; then
		tmux new-session
	elif [[ "$choice" = "${start_without_tmux}" ]]; then
		:
	elif [[ -n "$choice" ]]; then
		tmux attach-session -t "$choice"
	fi
}

yy() {
	local tmp
	tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"

	local cwd
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd" || return
	fi
	rm -f -- "$tmp"

}
