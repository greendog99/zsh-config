# Use GNU utilities when available

if [[ -d /opt/homebrew/opt/grep/libexec/gnubin ]]; then
  PATH="/opt/homebrew/opt/grep/libexec/gnubin:$PATH"
fi

if [[ -d /opt/homebrew/opt/coreutils/libexec/gnubin ]]; then
  PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
fi

