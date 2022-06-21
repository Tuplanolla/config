HISTCONTROL=erasedups:ignorespace
HISTFILESIZE=4096
HISTIGNORE=?:??:???:????:?????
HISTSIZE=4096
histchars=

# We inline the `title` and `now` programs
# to make this file self-contained.
title='\e]0;'
endtitle='\a'
datefmt='%Y-%m-%d %H:%M:%S'

reset='\e[0m'
dim_gray='\e[30m'
dim_red='\e[31m'
dim_yellow='\e[33m'
dim_green='\e[32m'
dim_cyan='\e[36m'
dim_blue='\e[34m'
dim_magenta='\e[35m'
dim_white='\e[37m'
gray='\e[90m'
red='\e[91m'
yellow='\e[93m'
green='\e[92m'
cyan='\e[96m'
blue='\e[94m'
magenta='\e[95m'
white='\e[97m'
yellow_on_dim_blue='\e[93;44m'
white_on_dim_red='\e[97;41m'
white_on_dim_yellow='\e[97;43m'

# While this `PROMPT_COMMAND` perfectly matches the `PS1`,
# its date and time fields are quite excessive,
# which is why we define another version that leaves them out.
DEFAULT_PROMPT_COMMAND="printf '$title%s %s@%s %s %s %s$endtitle' \
\"\$(date +'$datefmt')\" \
\"\$USER\" \"\$HOSTNAME\" \"\$PWD\" \
\"\$(basename \"\$SHELL\")\" \
\"\$(jobs -p | grep '^[[:digit:]]\+$' | wc -l)\""

DEFAULT_PROMPT_COMMAND="printf '$title%s@%s %s %s %s$endtitle' \
\"\$USER\" \"\$HOSTNAME\" \"\$PWD\" \
\"\$(basename \"\$SHELL\")\" \
\"\$(jobs -p | grep '^[[:digit:]]\+$' | wc -l)\""

DEFAULT_PS1="$(printf '[%s %s@%s %s %s %s]%s%s%s\n\$ ' \
"\[$red\]\D{$datefmt}\[$reset\]" \
"\[$yellow\]\u\[$reset\]" "\[$green\]\H\[$reset\]" "\[$cyan\]\w\[$reset\]" \
"\[$blue\]\s\[$reset\]" "\[$magenta\]\j\[$reset\]" \
"\$(if test -n \"\$CONDA_DEFAULT_ENV\" ; \
then printf \"\$CONDA_DEFAULT_ENV\" ; \
fi | sed 's/^.\\+$/ (\[$yellow_on_dim_blue\]conda\[$reset\] &)/')" \
"\$(if command -v __git_ps1 > '/dev/null' ; \
then __git_ps1 | grep -o '[^ ()]\\+' ; \
elif command -v git > '/dev/null' ; \
then git branch --show-current 2> '/dev/null' ; \
fi | sed 's/^.\\+$/ (\[$white_on_dim_red\]git\[$reset\] &)/')" \
"\$(if command -v opam > '/dev/null' ; \
then opam switch show ; \
fi | sed 's/^.\\+$/ (\[$white_on_dim_yellow\]opam\[$reset\] &)/')")"

DEFAULT_PS2='> '

PROMPT_COMMAND="$DEFAULT_PROMPT_COMMAND"
PS1="$DEFAULT_PS1"
PS2="$DEFAULT_PS2"
