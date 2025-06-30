# Shortcuts
alias c=clear
alias h=history

# Default options for commands
alias df='df -h'
alias diff="diff --color=auto"
alias grep="grep --color=auto"
alias mkdir="mkdir -pv"  # create intermediate directories, verbosely
alias wget="wget --continue --progress=bar --timestamping"
alias curl="curl --continue-at - --location --progress-bar --remote-name --remote-time"
alias ffprobe="ffprobe -hide_banner"
alias ffmpeg="ffmpeg -hide_banner"
alias ydiff="ydiff -s -w0"

# Directory listing
alias la='ls -AFh'      # all files except . & ..
alias ll='ls -lFh'      # long, human readable
alias lla='ls -lAFh'    # all files except . & ..
alias lt='ls -ltFhr'    # recursively by date
alias lat='ls -lAtFhr'  # recursively by date
alias ldot='ls -ld .*'  # just dot files

# nvim instead of vim
command -v nvim >/dev/null && alias vim="nvim" vi="nvim" v="nvim" vimdiff="nvim -d"

# lsd instead of ls.
# Also see ~/.config/lsd for defaults, which are probably:
#   date: relative
#   hyperlink: auto
if builtin whence -p lsd &> /dev/null
then
  alias ls='lsd'
  alias lsize='lsd --long --sizesort --reverse --total-size'
  alias ltree='lsd --tree'
  alias lltree='lsd --tree -lF'
fi

if builtin whence -p bat &> /dev/null
then
  alias cat='bat --plain'
fi

if builtin whence -p duf &> /dev/null
then
  alias df='duf --hide special'
fi

# https://github.com/bcicen/ctop
if builtin whence -p docker &> /dev/null
then
  alias ctop='docker run --rm -ti --name=ctop -v /var/run/docker.sock:/var/run/docker.sock:ro quay.io/vektorlab/ctop:latest'
fi

# global aliases (append to command to run through pipe, e.g. "cat foo NUL")
alias -g WC='|wc -l'
alias -g NUL='> /dev/null 2>&1'

# IP addresses
if builtin whence -p ifconfig &> /dev/null
then
  alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
else
  alias ips="ip addr | awk '\$1==\"inet\" && \$3!=\"scope\" {print \$2}' "
fi

# View HTTP traffic
alias sniff="sudo ngrep -d 'en0' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# Git
alias pullall='for i in */.git; do ( echo $i; cd $i/..; git pull; ); done'

# Listening sockets
alias netstat='ss -tulwrn'

# BGA
alias bgastatemap='php ~/prog/bga/bga-sharedcode/misc/generate_state_diagram.php | dot -Tpng -o states.png ; open states.png'
alias bgasync='lftp -u "newwavemike:" sftp://1.studio.boardgamearena.com -e "mirror -R -v --delete --delete-excluded --only-newer --exclude=.git/ --exclude=.DS_Store ~/prog/bga/pegsandjokers pegsandjokers; quit;"'
bgawatch () {
  find ~/prog/bga/pegsandjokers/ -type f | entr -s 'lftp -u "newwavemike:" sftp://1.studio.boardgamearena.com -e "mirror -R -v --delete --delete-excluded --only-newer --exclude=.git/ --exclude=.DS_Store ~/prog/bga/pegsandjokers pegsandjokers; quit;" ; afplay /System/Library/Sounds/Tink.aiff'
}
