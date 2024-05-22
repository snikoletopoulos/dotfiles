CONFIG=$HOME/.config/zsh

source $CONFIG/init.zsh

FILES_STR=$(find -L $CONFIG -name '*.zsh' -not -name 'init.zsh' -not -name 'aliases.zsh')

# `tr` is a find-and-replace utility.
# Outer () will convert the output of $() to array.
FILES=($(echo $FILES_STR | tr '\n' ' '))

for FILE in $FILES; do
	source $FILE
done

source $CONFIG/aliases.zsh
source $CONFIG/functions.sh
source $CONFIG/tmux-autostart.sh

