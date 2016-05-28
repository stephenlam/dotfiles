export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

alias ctags="`brew --prefix`/bin/ctags"

autoload -Uz compinit promptinit
compinit
promptinit

prompt off
prompt bart

# use vi key bindings
# http://dougblack.io/words/zsh-vi-mode.html
bindkey -v
export KEYTIMEOUT=1

[ -s "/Users/stephenlam/.dnx/dnvm/dnvm.sh" ] && . "/Users/stephenlam/.dnx/dnvm/dnvm.sh" # Load dnvm
