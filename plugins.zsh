if [[ -d /home/linuxbrew ]]; then
  export ZPLUG_HOME=/home/linuxbrew/.linuxbrew/opt/zplug
else
  export ZPLUG_HOME=~/.zplug
fi

source $ZPLUG_HOME/init.zsh

zplug 'zplug/zplug', hook-build:'zplug --self-manage' # Keep zplug updated
zplug "romkatv/powerlevel10k", as:theme, depth:1  # Theme
zplug "Aloxaf/fzf-tab"
zplug "zsh-users/zsh-completions"                 # Tab autocomplete for various commands
zplug "greymd/docker-zsh-completion"              # Docker and docker-compose completions
zplug "zsh-users/zsh-autosuggestions"             # Greyed command completion suggestions
zplug "agkozak/zsh-z"                             # Fuzzy cd based on history frecency
zplug "MichaelAquilina/zsh-you-should-use"        # Tell me when an alias is available
zplug "arzzen/calc.plugin.zsh"                    # Calculator. Start line with =
zplug "zdharma-continuum/fast-syntax-highlighting", defer:2 # Syntax highlighting as-you-type
zplug "zsh-users/zsh-history-substring-search", defer:3
zplug "plugins/colorize", from:oh-my-zsh          # ccat and cless functions; requires Pygments
zplug "plugins/macos", from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]"
zplug "plugins/sudo", from:oh-my-zsh        # <esc><esc> to prefix previous command with sudo

# Ask to install missing plugins
#if ! zplug check --verbose; then
if ! zplug check; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
    echo "Please log out and back in."
fi

zplug load
