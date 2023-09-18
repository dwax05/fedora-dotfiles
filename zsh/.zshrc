autoload -U colors && colors
setopt autocd
stty stop undef
setopt interactive_comments

HISTSIZE=100000
SAVEHIST=100000
HISTFILE="${XDG_CONFIG_HOME:-$HOME/.cache}/zsh/history"

[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit


# Plugins
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2> /dev/null
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh 2> /dev/null
source /usr/share/fzf/shell/key-bindings.zsh 2> /dev/null

# Greetings
pokemon-colorscripts -r --no-title
cat "$HOME/vimwiki/todo.norg" | grep "(-)\|( )" | grep -o '[[:alpha:]].*' | sed 's/^/- /' | sed "s/{[^}]*}//g" | lolcat -r # line at the end of {} items might be a problem eventually, but why slow it down even more when im already using 5 pipes?
