autoload -U colors && colors
setopt autocd
stty stop undef
setopt interactive_comments

set -o vi

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots) # lets you tab complete hidden files by default

export ZDOTDIR="$HOME/.config/zsh"
. "$ZDOTDIR/zshenv"

# Plugins
# (cat ~/.cache/wal/sequences &)
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2> /dev/null
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh 2> /dev/null
source /usr/share/fzf/shell/key-bindings.zsh 2> /dev/null

greet
