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

serveo() {
	ssh -R stavros.serveo.net:80:localhost:${1:-3000} serveo.net
}
