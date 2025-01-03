CONFIG=$HOME/.config/zsh

if [ -e "$CONFIG/env.sh" ]; then
	source $CONFIG/env.sh
else
	echo "Missing environment file: $CONFIG/env.sh"
fi

source $CONFIG/init.zsh

FILES_STR=$(find -L $CONFIG -name '*.zsh' -not -name 'init.zsh')

# `tr` is a find-and-replace utility.
# Outer () will convert the output of $() to array.
FILES=($(echo $FILES_STR | tr '\n' ' '))

for FILE in $FILES; do
	source $FILE
done

source $CONFIG/aliases.sh
source $CONFIG/functions.sh

if [[ -z $TMUX ]]; then
	start_tmux
fi
