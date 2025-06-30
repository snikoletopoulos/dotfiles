function zvm_config() {
	ZVM_VI_INSERT_ESCAPE_BINDKEY=jk


	zvm_define_widget run_snippet
}

function _register_pet_keymaps() {
	zvm_bindkey viins '^s' run_snippet
}
zvm_after_init_commands+=(_register_pet_keymaps)

function zvm_after_lazy_keybindings() {
	zvm_bindkey vicmd '^s' run_snippet
}
