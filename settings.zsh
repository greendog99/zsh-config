autoload -Uz compinit && compinit   # Enable tab completion
setopt auto_cd                      # Enable cd partial completion, ..., etc.
setopt interactivecomments          # Comment command lines with hash

# Press up-arrow to search history via zsh-history-substring-search
bindkey '^[[A' history-substring-search-up
bindkey '^P' history-substring-search-up
bindkey '^N' history-substring-search-down

# Edit line in nvim with ctrl-v
autoload -Uz edit-command-line;
zle -N edit-command-line
bindkey '^v' edit-command-line

# Save history
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000

