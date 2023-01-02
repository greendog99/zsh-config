if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  FPATH=$(brew --prefix)/completions/zsh:$FPATH

  autoload -Uz compinit
  compinit
fi

