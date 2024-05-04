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
source $CONFIG/tmux-autostart.sh

# Created by `pipx` on 2023-05-03 23:33:06
export PATH="$PATH:/Users/snikoletopoulos/.local/bin"
# eval "$(register-python-argcomplete pipx)"

export PATH="/opt/homebrew/opt/mongodb-community@5.0/bin:$PATH"
