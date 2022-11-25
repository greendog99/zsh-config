# setup ccat and cless from colorize plugin
if builtin whence -p pygmentize &> /dev/null
then
  #ZSH_COLORIZE_STYLE="monokai"
  ZSH_COLORIZE_STYLE="friendly"

  alias more=cless
  alias less=cless
fi


