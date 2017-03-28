HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

setopt appendhistory autocd beep extendedglob nomatch notify

autoload -Uz compinit promptinit
compinit
promptinit
prompt bart

# --- [KEYS]
# use vi key bindings
bindkey -v
# Reduce delay after hitting <ESC> to 1/10 seconds
export KEYTIMEOUT=1


# --- [ALIASES]
alias sv='sudo -E vim'
alias ez='vim ~/.zshrc'
alias sz='source ~/.zshrc'
alias ls='ls --color'
