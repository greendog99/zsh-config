source ~/.secrets.zsh

configpath=$HOME/.config/zsh

source $configpath/settings.zsh
source $configpath/homebrew.zsh
source $configpath/plugins.zsh
source $configpath/colorize-man.zsh
source $configpath/kitty.zsh
source $configpath/aliases.zsh
source $configpath/gnubin.zsh
source $configpath/zsh-completions.zsh
source $configpath/kittycolors.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Oh My Posh config & theme
if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config ~mfischer/.config/zsh/mike10k.omp.yaml)"
fi
