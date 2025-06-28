# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

source ~/.secrets.zsh

# Load individual zsh files
configpath=$HOME/.config/zsh
source $configpath/settings.zsh
source $configpath/homebrew.zsh
source $configpath/plugins.zsh
source $configpath/colorize-man.zsh
source $configpath/kitty.zsh
source $configpath/aliases.zsh
source $configpath/gnubin.zsh
# source $configpath/p10k.zsh
source $configpath/zsh-completions.zsh
source $configpath/kittycolors.zsh

## Things that like to be near the end

# Git status is extremely slow on RPi for some reason, so disable it.
if [[ `uname -m` == "armv7l" ]]; then
  POWERLEVEL9K_DISABLE_GITSTATUS=true
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Oh-my-posh config & theme
if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config ~mfischer/.config/zsh/mike10k.omp.json)"
# eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/jandedobbeleer.omp.json)"
fi
