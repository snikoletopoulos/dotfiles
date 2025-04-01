ZVM_VI_INSERT_ESCAPE_BINDKEY=jk

function zvm_after_lazy_keybindings() {
	zvm_define_widget pet_select
	zvm_bindkey viins '^s' pet_select
}

function pet_select() {
	pet exec
}
