ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"

source "${ZINIT_HOME}/zinit.zsh"

zinit light Aloxaf/fzf-tab

zinit ice as"completion"
zinit snippet OMZP::docker/completions/_docker

zinit snippet OMZP::git

zinit ice as"completion"
zinit snippet OMZP::pod/_pod

zinit ice as"completion"
zinit snippet OMZP::ripgrep/_ripgrep

zinit snippet OMZP::yarn

zinit ice as"completion"
zinit snippet OMZP::rust/_rustc

zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light zdharma-continuum/fast-syntax-highlighting

zinit ice as"command" from"gh-r" \
	atclone"./starship init zsh > init.zsh; ./starship completions zsh > _starship" \
	atpull"%atclone" src"init.zsh"
zinit light starship/starship

zinit ice wait lucid
zinit snippet "$HOME/.config/zsh/fnm.sh"

zinit ice wait lucid
zinit snippet "$HOME/.config/zsh/jenv.sh"

autoload -Uz compinit
if [ $(date +'%j') != $(stat -f '%Sm' -t '%j' ~/.zcompdump) ]; then
	compinit
else
	compinit -C
fi

zinit cdreplay -q
