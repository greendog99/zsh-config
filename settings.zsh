PATH=/snap/bin:$HOME/bin:$PATH
export EDITOR='nvim'
export SUDO_EDITOR=`which nvim`

#autoload -Uz compinit && compinit   # Enable tab completion
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
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=$HISTSIZE

setopt EXTENDED_HISTORY         # Write the history file in the ':start:elapsed;command' format.
setopt HIST_EXPIRE_DUPS_FIRST   # Expire a duplicate event first when trimming history.
# setopt HIST_FIND_NO_DUPS        # Do not display a previously found event.
# setopt HIST_IGNORE_ALL_DUPS     # Delete an old recorded event if a new event is a duplicate.
# setopt HIST_IGNORE_DUPS         # Do not record an event that was just recorded again.
# setopt HIST_IGNORE_SPACE        # Do not record an event starting with a space.
# setopt HIST_SAVE_NO_DUPS        # Do not write a duplicate event to the history file.
setopt SHARE_HISTORY            # Share history between all sessions.
setopt INC_APPEND_HISTORY       # Don't wait for shell to exit to save history lines

