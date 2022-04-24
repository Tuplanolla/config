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
red='\e[91m'
yellow='\e[93m'
green='\e[92m'
cyan='\e[96m'
blue='\e[94m'
magenta='\e[95m'
white='\e[97m'

# While this `PROMPT_COMMAND` perfectly matches the `PS1`,
# its date and time fields are quite excessive,
# which is why we define another version that leaves them out.
PROMPT_COMMAND="printf '$title%s %s@%s %s %s %s$endtitle' \
\"\$(date +'$datefmt')\" \
\"\$USER\" \"\$HOSTNAME\" \"\$PWD\" \
\"\$(basename \"\$SHELL\")\" \
\"\$(jobs -p | grep '^[[:digit:]]\+$' | wc -l)\""

PROMPT_COMMAND="printf '$title%s@%s %s %s %s$endtitle' \
\"\$USER\" \"\$HOSTNAME\" \"\$PWD\" \
\"\$(basename \"\$SHELL\")\" \
\"\$(jobs -p | grep '^[[:digit:]]\+$' | wc -l)\""

PS1="$(printf '[%s %s@%s %s %s %s]%s%s\n\$ ' \
"\[$red\]\D{$datefmt}\[$reset\]" \
"\[$yellow\]\u\[$reset\]" "\[$green\]\H\[$reset\]" "\[$cyan\]\w\[$reset\]" \
"\[$blue\]\s\[$reset\]" "\[$magenta\]\j\[$reset\]" \
"\$(\"\$(command -v __git_ps1)\")" \
"\$(test -n \"\$CONDA_DEFAULT_ENV\" && printf \" (\$CONDA_DEFAULT_ENV)\")")"

PS2='> '
