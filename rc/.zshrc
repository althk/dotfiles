# A simple, functional zshrc

###############################################################################
# Some default options

zstyle :compinstall filename '/home/harish/.zshrc'
zstyle ':completion:*' rehash true

setopt autocd autolist automenu extendedglob sharehistory
unsetopt beep listambiguous

autoload -Uz compinit
compinit

setopt sharehistory
fc -ARI

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

for i in functions env alias gcloud; do
	[ -e $HOME/.dotfiles/shell/.$i ] && source $HOME/.dotfiles/shell/.$i
done

###############################################################################

plugins=(git docker)
