# A simple, functional zshrc

###############################################################################
# Some default options

zstyle :compinstall filename '/home/harish/.zshrc'
zstyle ':completion:*' rehash true

setopt autocd autolist automenu extendedglob
unsetopt beep listambiguous


autoload -Uz compinit
compinit

###############################################################################
###############################################################################
# Prompt and completion

autoload -Uz promptinit
promptinit
prompt clint

#PS1="%B%n@%m:%~ (%D{%Y-%m-%d %T %Z})%b"$'\n'"%B%#%b "
###############################################################################
###############################################################################
# Key bindings

# Enable vim mode
bindkey -v

# Remap history search to Ctrl-r and Ctrl-p
bindkey -M viins '^r' history-incremental-search-backward
bindkey -M vicmd '^r' history-incremental-search-backward
bindkey -M viins '^p' history-beginning-search-backward
bindkey -M vicmd '^p' history-beginning-search-backward

###############################################################################
###############################################################################
# Load dotfiles

source $HOME/.dotfiles/shell/.{functions,env,alias}

###############################################################################
