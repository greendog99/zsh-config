# HomeBrew

# Set PATH, MANPATH, etc., for Homebrew.
if [[ -d /opt/homebrew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

if [[ -d /home/linuxbrew ]]; then
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

if (( $+commands[brew] )); then
  export HOMEBREW_GITHUB_API_TOKEN=$SECRET_HOMEBREW_GITHUB_API_TOKEN
  export HOMEBREW_NO_AUTO_UPDATE=1

  alias bubo='brew update NUL && brew outdated'
fi
