ZVM_VI_INSERT_ESCAPE_BINDKEY=jk

zvm_after_lazy_keybindings() {
	zvm_define_widget pet-select

	zvm_bindkey visual '^s' pet-select
	# bindkey '^s' pet-select
}

# function zvm_after_lazy_keybindings() {
# 	bindkey -M vicmd 's' your_normal_widget
# 	bindkey -M visual 'n' your_visual_widget
# }
