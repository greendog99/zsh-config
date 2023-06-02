# Prerequisites:
# kitty: https://sw.kovidgoyal.net/kitty/
# kitty themes: https://github.com/dexpota/kitty-themes
# pastel: https://github.com/sharkdp/pastel
# Usage:
# $ kittycolors
# $ kittycolors -s
kittycolors() {
	for COLOR in $(grep -o "#[a-f0-9]\{6\}" ~/.config/kitty/current-theme.conf)
  do
    pastel paint $(pastel textcolor $COLOR) --on $COLOR "$COLOR          "
  done
}
